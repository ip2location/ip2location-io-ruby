require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "IP2LocationIORuby" do
  it "work correctly with invalid Api Key" do
    IP2LocationIORuby::Configuration.api_key = ''
    begin
      IP2LocationIORuby::Api::IPGeolocation.lookup('8.8.8.8')
    rescue Exception => e
      expect(e.message).to eq 'Invalid API key or insufficient credit.'
    end
  end

  it "work correctly with Api Key exist" do
    if $test_api_key == 'YOUR_API_KEY'
      print "/*
* You could enter a FraudLabs Pro API Key in spec/spec_helper.rb
* for real web service calling test.
* 
* You could sign up for a free API key at https://www.fraudlabspro.com/pricing
* if you do not have one.
*/"
      expect($test_api_key).to eq 'YOUR_API_KEY'
    else
      expect($test_api_key).to_not eq 'YOUR_API_KEY'
    end
  end

  it "work correctly with lookup IP" do
    IP2LocationIORuby::Configuration.api_key = $test_api_key
    if $test_api_key == 'YOUR_API_KEY'
      begin
        IP2LocationIORuby::Api::IPGeolocation.lookup('8.8.8.8')
      rescue Exception => e
        expect(e.message).to eq 'Invalid API key or insufficient credit.'
      end
    else
      result = IP2LocationIORuby::Api::IPGeolocation.lookup('8.8.8.8')
      expect(JSON[result.body]['country_code']).to eq 'US'
    end
  end

end
