require "sprockets"

module MySprocketsExtension
  def self.call(input)
    raise Error
  end
end

Sprockets.register_preprocessor 'text/coffeescript', MySprocketsExtension
