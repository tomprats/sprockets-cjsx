require "coffee-react"

module Sprockets
  module CJSX
    module PreProcessor
      def self.call(input)
        { data: CoffeeReact.transform(input[:data]) }
      end
    end
  end
end

require "sprockets"
register_preprocessor "text/coffeescript", Sprockets::CJSX::PreProcessor
