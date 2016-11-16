require "sprockets"
require "coffee-react"

module Sprockets
  module CJSX
    module PreProcessor
      def self.call(input)
        raise Error
        { data: CoffeeReact.transform(input[:data]) }
      end
    end
  end
end

Sprockets.register_preprocessor "text/coffeescript", Sprockets::CJSX::PreProcessor
