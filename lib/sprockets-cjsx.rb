module MySprocketsExtension
  def self.call(input)
    result = input[:data] # :data key holds source
    { data: result }
  end
end

require 'sprockets/processing'
extend Sprockets::Processing

register_preprocessor 'text/css', MySprocketsExtension
