# Quickstart

## Dependencies

This module requires API key to function. You may sign up for a free API key at <https://www.ip2location.io/pricing>.

## Installation

Install this package using **gem** as below:

``` bash
gem install ip2location_io_ruby
```

## Sample Codes

### Lookup IP Address Geolocation Data

You can make a geolocation data lookup for an IP address as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Lookup ip address geolocation data
IP2LocationIORuby::Api::IPGeolocation.lookup('8.8.8.8', 'en'); # The language parameter is only available for Plus and Security plan only.
```

### Lookup Domain Information

You can lookup domain information as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Lookup domain information
IP2LocationIORuby::Api::DomainWhois.lookup('example.com');
```

### Convert Normal Text to Punycode

You can convert an international domain name to Punycode as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Convert normal text to punycode
IP2LocationIORuby::Api::DomainWhois.get_punycode('täst.de');
```

### Convert Punycode to Normal Text

You can convert a Punycode to international domain name as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Convert punycode to normal text
IP2LocationIORuby::Api::DomainWhois.get_normal_text('xn--tst-qla.de');
```

### Get Domain Name

You can extract the domain name from an url as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Get domain name from URL
IP2LocationIORuby::Api::DomainWhois.get_domain_name('https://www.example.com/exe');
```

### Get Domain Extension

You can extract the domain extension from a domain name or url as below:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Get domain extension (gTLD or ccTLD) from URL or domain name
IP2LocationIORuby::Api::DomainWhois.get_domain_extension('example.com');
```

### Get Hosted Domain List

You can get the domains listed within the IP using following codes:

```ruby
require 'ip2location_io_ruby'

# Configures IP2Location.io API key
IP2LocationIORuby::Configuration.api_key = 'YOUR_API_KEY'

# Get domain extension (gTLD or ccTLD) from URL or domain name
IP2LocationIORuby::Api::HostedDomain.lookup('8.8.8.8');