# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_currencyrate"
  spec.version       = "1.2.5"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Currency Rate API - Ruby Client"
  spec.description   = "Currency Rate returns one currency's live value in US dollars or any other base, across 170+ currencies, with its name, symbol and direction since yesterday. Paid plans add any base currency, 1-day to 1-year changes, 24-hour and 30-day highs and lows, and hourly and 30-day daily history."
  spec.homepage      = "https://apiverve.com/marketplace/currencyrate?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/currencyrate-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/currencyrate"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
