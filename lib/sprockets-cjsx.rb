require "sprockets"
require "coffee-react"
require "coffee-script"

module Sprockets
  module CJSX
    module PreProcessor
      def self.call(input)
        { data: CoffeeReact.transform(input[:data]) }
      end
    end
  end
end

Sprockets.register_preprocessor "text/coffeescript", Sprockets::CJSX::PreProcessor
