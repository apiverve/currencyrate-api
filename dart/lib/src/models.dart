/// Response models for the Currency Rate API.

/// API Response wrapper.
class CurrencyrateResponse {
  final String status;
  final dynamic error;
  final CurrencyrateData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CurrencyrateResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CurrencyrateResponse.fromJson(Map<String, dynamic> json) => CurrencyrateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CurrencyrateData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Currency Rate API.

class CurrencyrateData {
  String? currency;
  String? currencyName;
  String? currencySymbol;
  String? base;
  String? baseName;
  num? price;
  num? rate;
  String? changeDirection;
  String? date;
  String? lastUpdated;
  num? change1d;
  num? change7d;
  num? change30d;
  num? change1y;
  num? high24h;
  num? low24h;
  num? high30d;
  num? low30d;
  num? average30d;
  num? volatility30d;
  List<CurrencyrateDataHourlyItem>? hourly;
  List<CurrencyrateDataDailyItem>? daily;

  CurrencyrateData({
    this.currency,
    this.currencyName,
    this.currencySymbol,
    this.base,
    this.baseName,
    this.price,
    this.rate,
    this.changeDirection,
    this.date,
    this.lastUpdated,
    this.change1d,
    this.change7d,
    this.change30d,
    this.change1y,
    this.high24h,
    this.low24h,
    this.high30d,
    this.low30d,
    this.average30d,
    this.volatility30d,
    this.hourly,
    this.daily,
  });

  factory CurrencyrateData.fromJson(Map<String, dynamic> json) => CurrencyrateData(
      currency: json['currency'],
      currencyName: json['currencyName'],
      currencySymbol: json['currencySymbol'],
      base: json['base'],
      baseName: json['baseName'],
      price: json['price'],
      rate: json['rate'],
      changeDirection: json['changeDirection'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
      change1d: json['change1d'],
      change7d: json['change7d'],
      change30d: json['change30d'],
      change1y: json['change1y'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      high30d: json['high30d'],
      low30d: json['low30d'],
      average30d: json['average30d'],
      volatility30d: json['volatility30d'],
      hourly: (json['hourly'] as List?)?.map((e) => CurrencyrateDataHourlyItem.fromJson(e)).toList(),
      daily: (json['daily'] as List?)?.map((e) => CurrencyrateDataDailyItem.fromJson(e)).toList(),
    );
}

class CurrencyrateDataHourlyItem {
  num? hour;
  num? price;
  String? timestamp;

  CurrencyrateDataHourlyItem({
    this.hour,
    this.price,
    this.timestamp,
  });

  factory CurrencyrateDataHourlyItem.fromJson(Map<String, dynamic> json) => CurrencyrateDataHourlyItem(
      hour: json['hour'],
      price: json['price'],
      timestamp: json['timestamp'],
    );
}

class CurrencyrateDataDailyItem {
  String? date;
  num? price;

  CurrencyrateDataDailyItem({
    this.date,
    this.price,
  });

  factory CurrencyrateDataDailyItem.fromJson(Map<String, dynamic> json) => CurrencyrateDataDailyItem(
      date: json['date'],
      price: json['price'],
    );
}

class CurrencyrateRequest {
  String currency;
  String? base;
  bool? hourly;
  bool? daily;

  CurrencyrateRequest({
    required this.currency,
    this.base,
    this.hourly,
    this.daily,
  });

  Map<String, dynamic> toJson() => {
      'currency': currency,
      if (base != null) 'base': base,
      if (hourly != null) 'hourly': hourly,
      if (daily != null) 'daily': daily,
    };
}
