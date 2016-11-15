Gem::Specification.new do |g|
  g.name          = "sprockets-cjsx"
  g.version       = "0.0.3"
  g.licenses      = ["MIT"]
  g.summary       = "CJSX with Sprockets"
  g.description   = "Allows you to use CJSX with Sprockets"
  g.author        = "Tom Prats"
  g.email         = "tom@tomprats.com"
  g.homepage      = "https://github.com/tomprats/sprockets-cjsx"

  g.files         = `git ls-files`.split($/)
  g.require_paths = ["lib"]

  g.add_runtime_dependency "coffee-react"
  g.add_runtime_dependency "coffee-script"
  g.add_runtime_dependency "sprockets", ">= 3.0"
end
