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

    module Transformer
      def self.call(input)
        { data: CoffeeScript.compile(input[:data]) }
      end
    end
  end
end

Sprockets.register_mime_type "text/coffeescript", extensions: [".coffee"]
Sprockets.register_preprocessor "text/coffeescript", Sprockets::CJSX::PreProcessor
Sprockets.register_transformer "text/coffeescript", "application/javascript", Sprockets::CJSX::Transformer
