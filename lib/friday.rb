require "friday/version"

module Friday
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Friday, what can I do for you!"]]
    end
  end
end

