module IP2LocationIORuby
  class Configuration
    @api_key = ''

    class << self
      attr_accessor :api_key
    end
  end
end
