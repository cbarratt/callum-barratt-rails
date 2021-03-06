require 'excon'
require 'withings'
require './lib/withings_connector'

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

    Weighin.destroy(to_be_deleted) if to_be_deleted.size > 0
  end
end
