declare module '@apiverve/currencyrate' {
  export interface currencyrateOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface currencyrateResponse {
    status: string;
    error: string | null;
    data: CurrencyRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CurrencyRateData {
      currency:        null | string;
      currencyName:    null | string;
      currencySymbol:  null | string;
      base:            null | string;
      baseName:        null | string;
      price:           number | null;
      rate:            number | null;
      changeDirection: null | string;
      date:            Date | null;
      lastUpdated:     Date | null;
      change1D:        number | null;
      change7D:        number | null;
      change30D:       number | null;
      change1Y:        number | null;
      high24H:         number | null;
      low24H:          number | null;
      high30D:         number | null;
      low30D:          number | null;
      average30D:      number | null;
      volatility30D:   number | null;
      hourly:          Hourly[];
      daily:           Daily[];
  }
  
  interface Daily {
      date:  Date | null;
      price: number | null;
  }
  
  interface Hourly {
      hour:      number | null;
      price:     number | null;
      timestamp: Date | null;
  }

  export default class currencyrateWrapper {
    constructor(options: currencyrateOptions);

    execute(callback: (error: any, data: currencyrateResponse | null) => void): Promise<currencyrateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: currencyrateResponse | null) => void): Promise<currencyrateResponse>;
    execute(query?: Record<string, any>): Promise<currencyrateResponse>;
  }
}
