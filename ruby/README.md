# Currency Rate API - Ruby Gem

Currency Rate returns one currency's live value in US dollars or any other base, across 170+ currencies, with its name, symbol and direction since yesterday. Paid plans add any base currency, 1-day to 1-year changes, 24-hour and 30-day highs and lows, and hourly and 30-day daily history.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_currencyrate'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_currencyrate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_currencyrate'

# Initialize the client
client = APIVerve::Currencyrate::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency: "EUR",
  base: "USD",
  hourly: true,
  daily: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "EUR", base: "USD", hourly: true, daily: true })
  puts response["data"]
rescue APIVerve::Currencyrate::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Currencyrate::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Currencyrate::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "EUR",
    "currencyName": "Euro",
    "currencySymbol": "€",
    "base": "USD",
    "baseName": "US Dollar",
    "price": 1.1171949,
    "rate": 0.895099,
    "changeDirection": "down",
    "date": "2026-10-27",
    "lastUpdated": "2026-10-27T20:39:40.670Z",
    "change1d": -0.4448,
    "change7d": -0.5707,
    "change30d": -1.9319,
    "change1y": -4.0014,
    "high24h": 1.1222085,
    "low24h": 1.1169153,
    "high30d": 1.1389042,
    "low30d": 1.1171949,
    "average30d": 1.1237302,
    "volatility30d": 0.2421,
    "hourly": [
      {
        "hour": 21,
        "price": 1.1216899,
        "timestamp": "2026-10-26T21:39:40.670Z"
      },
      {
        "hour": 22,
        "price": 1.1221166,
        "timestamp": "2026-10-26T22:39:40.670Z"
      },
      {
        "hour": 23,
        "price": 1.1222085,
        "timestamp": "2026-10-26T23:39:40.670Z"
      },
      {
        "hour": 0,
        "price": 1.121266,
        "timestamp": "2026-10-27T00:39:40.670Z"
      },
      {
        "hour": 1,
        "price": 1.1209254,
        "timestamp": "2026-10-27T01:39:40.670Z"
      },
      {
        "hour": 2,
        "price": 1.1214635,
        "timestamp": "2026-10-27T02:39:40.670Z"
      },
      {
        "hour": 3,
        "price": 1.1211743,
        "timestamp": "2026-10-27T03:39:40.670Z"
      },
      {
        "hour": 4,
        "price": 1.120221,
        "timestamp": "2026-10-27T04:39:40.670Z"
      },
      {
        "hour": 5,
        "price": 1.1202649,
        "timestamp": "2026-10-27T05:39:40.670Z"
      },
      {
        "hour": 6,
        "price": 1.1207156,
        "timestamp": "2026-10-27T06:39:40.670Z"
      },
      {
        "hour": 7,
        "price": 1.1200654,
        "timestamp": "2026-10-27T07:39:40.670Z"
      },
      {
        "hour": 8,
        "price": 1.1192919,
        "timestamp": "2026-10-27T08:39:40.670Z"
      },
      {
        "hour": 9,
        "price": 1.1196516,
        "timestamp": "2026-10-27T09:39:40.670Z"
      },
      {
        "hour": 10,
        "price": 1.1198409,
        "timestamp": "2026-10-27T10:39:40.670Z"
      },
      {
        "hour": 11,
        "price": 1.1189437,
        "timestamp": "2026-10-27T11:39:40.670Z"
      },
      {
        "hour": 12,
        "price": 1.1184957,
        "timestamp": "2026-10-27T12:39:40.670Z"
      },
      {
        "hour": 13,
        "price": 1.1190188,
        "timestamp": "2026-10-27T13:39:40.670Z"
      },
      {
        "hour": 14,
        "price": 1.1188423,
        "timestamp": "2026-10-27T14:39:40.670Z"
      },
      {
        "hour": 15,
        "price": 1.1178767,
        "timestamp": "2026-10-27T15:39:40.670Z"
      },
      {
        "hour": 16,
        "price": 1.117813,
        "timestamp": "2026-10-27T16:39:40.670Z"
      },
      {
        "hour": 17,
        "price": 1.1183068,
        "timestamp": "2026-10-27T17:39:40.670Z"
      },
      {
        "hour": 18,
        "price": 1.1177543,
        "timestamp": "2026-10-27T18:39:40.670Z"
      },
      {
        "hour": 19,
        "price": 1.1169153,
        "timestamp": "2026-10-27T19:39:40.670Z"
      },
      {
        "hour": 20,
        "price": 1.1171949,
        "timestamp": "2026-10-27T20:39:40.670Z"
      }
    ],
    "daily": [
      {
        "date": "2026-09-28",
        "price": 1.1389042
      },
      {
        "date": "2026-09-29",
        "price": 1.1360719
      },
      {
        "date": "2026-09-30",
        "price": 1.1332292
      },
      {
        "date": "2026-10-01",
        "price": 1.1316672
      },
      {
        "date": "2026-10-02",
        "price": 1.1253328
      },
      {
        "date": "2026-10-03",
        "price": 1.1253328
      },
      {
        "date": "2026-10-04",
        "price": 1.1258142
      },
      {
        "date": "2026-10-05",
        "price": 1.1183506
      },
      {
        "date": "2026-10-06",
        "price": 1.1214861
      },
      {
        "date": "2026-10-07",
        "price": 1.1230668
      },
      {
        "date": "2026-10-08",
        "price": 1.1204946
      },
      {
        "date": "2026-10-09",
        "price": 1.1238531
      },
      {
        "date": "2026-10-10",
        "price": 1.1201771
      },
      {
        "date": "2026-10-11",
        "price": 1.1203591
      },
      {
        "date": "2026-10-12",
        "price": 1.1200441
      },
      {
        "date": "2026-10-13",
        "price": 1.117512
      },
      {
        "date": "2026-10-14",
        "price": 1.1210926
      },
      {
        "date": "2026-10-15",
        "price": 1.1225096
      },
      {
        "date": "2026-10-16",
        "price": 1.1237597
      },
      {
        "date": "2026-10-17",
        "price": 1.1239024
      },
      {
        "date": "2026-10-18",
        "price": 1.1238973
      },
      {
        "date": "2026-10-19",
        "price": 1.1229457
      },
      {
        "date": "2026-10-20",
        "price": 1.1236069
      },
      {
        "date": "2026-10-21",
        "price": 1.122802
      },
      {
        "date": "2026-10-22",
        "price": 1.1243067
      },
      {
        "date": "2026-10-23",
        "price": 1.1213616
      },
      {
        "date": "2026-10-24",
        "price": 1.120408
      },
      {
        "date": "2026-10-25",
        "price": 1.1202373
      },
      {
        "date": "2026-10-26",
        "price": 1.1221858
      },
      {
        "date": "2026-10-27",
        "price": 1.1171949
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/currencyrate?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/currencyrate?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/currencyrate?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
