require 'uri'
require 'json'
require 'net/http'
require "ip2location_io_ruby/configuration"
require "ip2location_io_ruby/version"

module IP2LocationIORuby
  module Api
    class IPGeolocation

      # Lookup given IP address for an enriched data set.
      def self.lookup(ip, language = '')
        uri = URI.parse("https://api.ip2location.io/?key=" + IP2LocationIORuby::Configuration.api_key + "&format=json&ip=" + ip + "&lang=" + language + "&source=sdk-ruby-iplio&source_version=" + IP2LocationIORuby::VERSION)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(uri.request_uri)

        response = http.request(request)

        if response == nil
          raise Exception.new "IPGeolocation lookup error."
        elsif JSON[response.body]['error']
          raise Exception.new JSON[response.body]['error']['error_message']
        else
          return response
        end
      end

    end
  end
end