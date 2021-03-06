
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "apex_stats/version"

Gem::Specification.new do |spec|
  spec.name          = "apex_stats"
  spec.version       = ApexStats::VERSION
  spec.authors       = ["'Chloe Steffens'"]
  spec.email         = ["'caforonda103@yahoo.com'"]

  spec.summary       = %q{This gem finds the stats within all of the top characters or 'legends' in the video game Apex Legends.}
  spec.description   = %q{This gem finds the stats within all of the top characters or 'legends' in the video game Apex Legends. It is organized by usage, kills per match, damage per match, win rate, and headshots per kill. This gem also allows the user to read up on the legends by typing in their name.}
  spec.homepage      = "https://github.com/ohaiklochan/apex_stats.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #  spec.metadata["homepage_uri"] = spec.homepage
  #  spec.metadata["source_code_uri"] = "https://github.com/ohaiklochan/apex_stats.git"
  #  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
 # else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
 # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  # spec.add_dependency "rest-client"
  # spec.add_dependency "json"
end
