desc 'Pull macronutrient data from myfitnesspal'
namespace :myfitnesspal do
  task fetch_data: :environment do
    Rails.logger = Logger.new(STDOUT)

    %w(calories carbs fat protein).each do |type|
      data = ::Myfitnesspal.new.report_data(type)['data']

      data.each do |measure|
        macro = measure['total']

        # We don't want to store a record if there are 0 calories
        if macro > 0.0
          date = Date.parse(measure['date']).to_s(:db)
          reading = Macro.where(logged_date: date).first_or_create
          reading.update("#{type}": macro.round)
        end
      end
    end
  end
end

desc 'Pull weight data from Withings API'
namespace :withings do
  task fetch_data: :environment do
    Rails.logger = Logger.new(STDOUT)

    withings = WithingsConnector.new
    @weighins = withings.user.measurement_groups(device: Withings::SCALE)

    withings_ids = []

    @weighins.each do |w|
      withings_ids << w.group_id.to_s
      Weighin.where(withings_id: w.group_id).first_or_create(weight: w.weight, bodyfat_mass: w.fat, bodyfat_percentage: w.ratio, lean_mass: w.fat_free, taken_at: w.taken_at)
    end

    to_be_deleted = []

    Weighin.where.not(withings_id: withings_ids).each do |record|
      to_be_deleted << record.id
    end

    binding.pry

    Weighin.destroy(to_be_deleted) if to_be_deleted.size > 0
  end
end
