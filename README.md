# [Currency Rate API](https://apiverve.com/marketplace/currencyrate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Currency Rate returns one currency&#x27;s live value in US dollars or any other base, across 170+ currencies, with its name, symbol and direction since yesterday. Paid plans add any base currency, 1-day to 1-year changes, 24-hour and 30-day highs and lows, and hourly and 30-day daily history.

The Currency Rate API provides a simple, reliable way to integrate currency rate functionality into your applications. Built for developers who need production-ready currency rate capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/currencyrate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/currencyrate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/currencyrate)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.CurrencyRate)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-currencyrate/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_currencyrate)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/currencyrate)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_currencyrate)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callCurrencyRateAPI() {
    try {
        const params = new URLSearchParams({
            currency: 'EUR'
        });

        const response = await fetch(`https://api.apiverve.com/v1/currencyrate?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callCurrencyRateAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/currencyrate?currency=EUR" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/currencyrate
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/currencyrate) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.CurrencyRate
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.CurrencyRate) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-currencyrate
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-currencyrate/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_currencyrate
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_currencyrate) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/currencyrate
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/currencyrate) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_currencyrate
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_currencyrate) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:currencyrate-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/currencyrate-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Currency Rate API](https://apiverve.com/marketplace/currencyrate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/currencyrate](https://docs.apiverve.com/ref/currencyrate)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Currency Rate API is commonly used for:

- **Web Applications** - Add currency rate features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with currency rate capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Currency Rate API:

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

## Support & Community

- 🏠 **API Home**: [Currency Rate API](https://apiverve.com/marketplace/currencyrate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
