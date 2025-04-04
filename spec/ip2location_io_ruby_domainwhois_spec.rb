require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "IP2LocationIORuby" do
  it "work correctly with invalid Api Key" do
    IP2LocationIORuby::Configuration.api_key = ''
    begin
      IP2LocationIORuby::Api::DomainWhois.lookup('example.c')
    rescue Exception => e
      expect(e.message).to eq 'API key not found.'
    end
  end

  it "work correctly with Api Key exist" do
    if $test_api_key == 'YOUR_API_KEY'
      print "/*
* You could enter a IP2Location.io API Key in spec/spec_helper.rb
* for real web service calling test.
* 
* You could sign up for a free API key at https://www.ip2location.io/pricing
* if you do not have one.
*/"
      expect($test_api_key).to eq 'YOUR_API_KEY'
    else
      expect($test_api_key).to_not eq 'YOUR_API_KEY'
    end
  end

  it "work correctly with lookup domain" do
    IP2LocationIORuby::Configuration.api_key = $test_api_key
    if $test_api_key == 'YOUR_API_KEY'
      begin
        IP2LocationIORuby::Api::DomainWhois.lookup('example.c')
      rescue Exception => e
        expect(e.message).to eq 'API key not found.'
      end
    else
      begin
        result = IP2LocationIORuby::Api::DomainWhois.lookup('example.c')
      rescue Exception => e
        expect(e.message).to eq 'Invalid domain.'
      end
    end
  end

end
