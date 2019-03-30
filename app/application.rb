class Application
  def call(env)
    resp = Rack::Response.new

    # time_now = Time.new.to_s.split(" ")
    # time_now = time_now[1].split(":")
    # if time_now[0].to_i < 12
    #   resp.write "Good Morning"
    # elsif time_now[0].to_i >= 12
    #   resp.write "Good Afternoon"
    # end
    # time_now = Time.new
    #
    # if time_now.hour >= 12
    #   resp.write "Good Afternoon"
    # else
    #   resp.write "Good Morning"
    # end
    the_time = Time.now
    if the_time.hour >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end
