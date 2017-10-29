class Application

  def call(env)
    resp = Rack::Response.new

    welcome = "Welcome, friend...\n\n"

    def morning?
      win = Time.now.to_s.split[1].split(":")[0].to_i < 12
    end


    resp.write welcome
    if morning?
      resp.write "Good Morning, chump"
    else
      resp.write "Good Afternoon, chump"
    end
    resp.finish
  end

end
