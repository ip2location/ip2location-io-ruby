require 'ip2location_io_ruby'

IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

begin
    result = IP2LocationIORuby::Api::IPGeolocation.lookup('8.8.8.8')
rescue Exception => e
    puts e.message
else
    puts result.body
end

begin
    result = IP2LocationIORuby::Api::DomainWhois.lookup('example.com')
rescue Exception => e
    puts e.message
else
    puts result.body
end
puts IP2LocationIORuby::Api::DomainWhois.get_punycode('täst.de')
puts IP2LocationIORuby::Api::DomainWhois.get_normal_text('xn--tst-qla.de')
puts IP2LocationIORuby::Api::DomainWhois.get_domain_name('https://www.example.com/exe')
puts IP2LocationIORuby::Api::DomainWhois.get_domain_extension('example.com')