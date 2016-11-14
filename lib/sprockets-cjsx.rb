require "sprockets"
require "coffee-react"
require "coffee-script"

module Sprockets
  module CJSX
    module PreProcessor
      def self.call(input)
        coffeescript = CoffeeReact.transform(input[:data])
        javascript   = CoffeeScript.compile(coffeescript)
        { data: javascript }
      end
    end

    module PostProcessor
      def self.call(input)
        { data: CoffeeReact.jstransform(input[:data]) }
      end
    end
  end
end

Sprockets.register_preprocessor "application/javascript", Sprockets::CJSX::PreProcessor
Sprockets.register_postprocessor "application/javascript", Sprockets::CJSX::PreProcessor
