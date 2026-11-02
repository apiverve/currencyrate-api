Currency Rate API
============

Currency Rate returns one currency's live value in US dollars or any other base, across 170+ currencies, with its name, symbol and direction since yesterday. Paid plans add any base currency, 1-day to 1-year changes, 24-hour and 30-day highs and lows, and hourly and 30-day daily history.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-currencyrate.svg)](https://pypi.org/project/apiverve-currencyrate/)

This is a Python wrapper for the [Currency Rate API](https://apiverve.com/marketplace/currencyrate?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-currencyrate
```

Using `pip3`:

```bash
pip3 install apiverve-currencyrate
```

---

## Configuration

Before using the Currency Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient

# Initialize the client with your APIVerve API key
api = CurrencyrateAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Currency Rate API documentation is found here: [https://docs.apiverve.com/ref/currencyrate](https://docs.apiverve.com/ref/currencyrate?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient

# Initialize the client with your APIVerve API key
api = CurrencyrateAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `CurrencyrateAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient, CurrencyrateAPIClientError

api = CurrencyrateAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except CurrencyrateAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient, CurrencyrateAPIClientError

api = CurrencyrateAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except CurrencyrateAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient, CurrencyrateAPIClientError

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

# Using context manager ensures proper cleanup
with CurrencyrateAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except CurrencyrateAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient

# Enable debug mode
api = CurrencyrateAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_currencyrate.apiClient import CurrencyrateAPIClient

api = CurrencyrateAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "EUR",
    "base": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
