require 'rack'

# Something that responds to call, that's what Rack demands
class Ack
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["Hello"] : ["HELLO"]
  end
end

run Ack.new 