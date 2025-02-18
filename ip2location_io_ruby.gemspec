# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ip2location_io_ruby/version"

Gem::Specification.new do |s|
  s.name          = "ip2location_io_ruby"
  s.version       = IP2LocationIORuby::VERSION
  s.authors       = ["IP2Location"]
  s.email         = ["support@ip2location.com"]
  s.summary       = "IP2Location IO Ruby SDK"
  s.description   = "IP2Location.IO Ruby SDK allows user to query for an enriched data set based on IP address and provides WHOIS lookup api that helps users to obtain domain information."
  s.homepage      = "https://github.com/ip2location/ip2location-io-ruby"
  s.licenses      = ["MIT"]
  s.require_paths = ["lib"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "example.rb",
    "ip2location_io_ruby.gemspec",
    "lib/ip2location_io_ruby.rb",
    "lib/ip2location_io_ruby/api.rb",
    "lib/ip2location_io_ruby/api/domainwhois.rb",
    "lib/ip2location_io_ruby/api/ipgeolocation.rb",
    "lib/ip2location_io_ruby/configuration.rb",
    "lib/ip2location_io_ruby/version.rb",
    "spec/spec_helper.rb",
    "spec/ip2location_io_ruby_domainwhois_spec.rb",
    "spec/ip2location_io_ruby_ipgeolocation_spec.rb"
  ]
  if s.respond_to?(:metadata=)
    s.metadata = {
      "bug_tracker_uri" => "https://github.com/ip2location/ip2location-io-ruby/issues",
      "documentation_uri" => "https://www.rubydoc.info/gems/ip2location_io_ruby",
      "homepage_uri" => "https://www.ip2location.io",
      "source_code_uri" => "https://github.com/ip2location/ip2location-io-ruby",
    }
  end
  s.add_runtime_dependency "simpleidn", "~> 0.2"
end