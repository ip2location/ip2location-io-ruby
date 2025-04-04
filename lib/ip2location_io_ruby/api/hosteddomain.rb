require 'uri'
require 'json'
require 'net/http'
require "ip2location_io_ruby/configuration"
require "ip2location_io_ruby/version"

module IP2LocationIORuby
  module Api
    class HostedDomain

      # Lookup hosted domains information.
      def self.lookup(ip, page = 1)
        uri = URI.parse("https://domains.ip2whois.com/domains?key=" + IP2LocationIORuby::Configuration.api_key + "&format=json&ip=" + ip + "&page=" + page.to_s + "source=sdk-ruby-iplio&source_version=" + IP2LocationIORuby::VERSION)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(uri.request_uri)

        response = http.request(request)

        if response == nil
          raise Exception.new "HostedDomain lookup error."
        elsif JSON[response.body]['error']
          raise Exception.new JSON[response.body]['error']['error_message']
        else
          return response
        end
      end

    end
  end
end