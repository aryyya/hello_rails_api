require 'json'

class Hello
  def to_json(text)
    return JSON.parse("{\"message\":\"Hello, #{text}!\"}")
  end
end
