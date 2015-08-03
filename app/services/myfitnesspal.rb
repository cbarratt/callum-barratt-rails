class Myfitnesspal
  def initialize
    @user = ENV.fetch('MFP_USER')
    @password = ENV.fetch('MFP_PASS')

    authenticate
  end

  def authenticate
    @mechanize = ::Mechanize.new
    login_page = @mechanize.get 'https://www.myfitnesspal.com/account/login'
    form = login_page.forms.first

    form.field_with(id: 'username').value = @user
    form.field_with(id: 'password').value = @password
    form.submit
  end

  def report_data(type)
    macro = type.titleize
    JSON.parse(@mechanize.get("http://www.myfitnesspal.com/reports/results/nutrition/#{macro}/800.json?report_name=#{macro}").body)
  end
end
