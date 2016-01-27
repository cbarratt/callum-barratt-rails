class Api::V1::FetchController < Api::V1::BaseController
  def index
    Rails.application.load_tasks

    Rake::Task['withings:fetch_data'].invoke

    render plain: 'Invoked Withings Rake task.'
  end
end
