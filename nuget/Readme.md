Currency Rate API
============

Currency Rate returns one currency's live value in US dollars or any other base, across 170+ currencies, with its name, symbol and direction since yesterday. Paid plans add any base currency, 1-day to 1-year changes, 24-hour and 30-day highs and lows, and hourly and 30-day daily history.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.CurrencyRate.svg)](https://www.nuget.org/packages/APIVerve.API.CurrencyRate)

This is a .NET wrapper for the [Currency Rate API](https://apiverve.com/marketplace/currencyrate?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.CurrencyRate
```

Using the Package Manager:
```
nuget install APIVerve.API.CurrencyRate
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.CurrencyRate
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.CurrencyRate"
5. Click on the APIVerve.API.CurrencyRate package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Currency Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.CurrencyRate;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyRateQueryOptions {
            Currency = "EUR",
            Base = "USD",
            Hourly = true,
            Daily = true
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Currency Rate API documentation is found here: [https://docs.apiverve.com/ref/currencyrate](https://docs.apiverve.com/ref/currencyrate?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Currency Rate API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyRateQueryOptions {
            Currency = "EUR",
            Base = "USD",
            Hourly = true,
            Daily = true
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.CurrencyRate;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyRateQueryOptions {
            Currency = "EUR",
            Base = "USD",
            Hourly = true,
            Daily = true
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyRateQueryOptions {
            Currency = "EUR",
            Base = "USD",
            Hourly = true,
            Daily = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new CurrencyRateQueryOptions {
            Currency = "EUR",
            Base = "USD",
            Hourly = true,
            Daily = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new CurrencyRateQueryOptions {
    Currency = "EUR",
    Base = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new CurrencyRateQueryOptions {
    Currency = "EUR",
    Base = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new CurrencyRateQueryOptions {
    Currency = "EUR",
    Base = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new CurrencyRateQueryOptions {
    Currency = "EUR",
    Base = "USD",
    Hourly = true,
    Daily = true
};

using (var apiClient = new CurrencyRateAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
