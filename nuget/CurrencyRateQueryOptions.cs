using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CurrencyRate
{
    /// <summary>
    /// Query options for the Currency Rate API
    /// </summary>
    public class CurrencyRateQueryOptions
    {
        /// <summary>
        /// The ISO 4217 code of the currency to price (e.g. EUR)
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }

        /// <summary>
        /// The currency to price it in; defaults to USD
        /// </summary>
        [JsonProperty("base")]
        public string Base { get; set; }

        /// <summary>
        /// Include the price for each of the last 24 hours
        /// </summary>
        [JsonProperty("hourly")]
        public bool? Hourly { get; set; }

        /// <summary>
        /// Include the daily closing price for the last 30 days
        /// </summary>
        [JsonProperty("daily")]
        public bool? Daily { get; set; }
    }
}
