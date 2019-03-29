require 'date'
require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    current_time = DateTime.now
    current_time =current_time.strftime "%H"
    if  current_time.to_i < 12
      resp.write "Good Morning!"
    else
      resp.write"Good Afternoon!"
    end
    resp.finish
  end
end
