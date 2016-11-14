Gem::Specification.new do |g|
  g.name        = "sprockets-cjsx"
  g.version     = "0.0.0"
  g.licenses    = ["MIT"]
  g.summary     = "CJSX with Sprockets"
  g.description = "Sprockets "
  g.author      = "Tom Prats"
  g.email       = "tom@tomprats.com"
  g.homepage    = "https://github.com/tomprats/sprockets-cjsx"

  g.files         = `git ls-files`.split($/)
  g.require_paths = ["lib"]

  g.add_runtime_dependency "coffee-react"
  g.add_runtime_dependency "sprockets"
end
