class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour
    if time > 7 && time < 12
    resp.write "Good Morning!"
  elsif time > 12 && time < 18
    resp.write "Good Afternoon!"
  else
    resp.write "Good Night!"
  end
    resp.finish
  end
end
