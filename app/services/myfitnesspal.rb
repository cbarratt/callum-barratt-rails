class Myfitnesspal
  def initialize
    @user = ENV.fetch('MFP_USER')
    @password = ENV.fetch('MFP_PASS')

    authenticate
  end

  def authenticate
    session = Excon.post('https://www.myfitnesspal.com/account/login', body: "username=#{@user}&password=#{@password}")
    @cookie = CGI::Cookie.parse(session.headers['Set-Cookie'])['_session_id']
  end

  def report_data(type)
    data = Excon.get("http://www.myfitnesspal.com/reports/results/nutrition/#{type}/400.json?report_name=#{type}", headers: { 'Cookie' => @cookie.to_s })

    JSON.parse(data.body)
  end
end
