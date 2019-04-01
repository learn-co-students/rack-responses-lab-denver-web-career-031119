class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.hour
    # resp.write current_time

    if current_time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
