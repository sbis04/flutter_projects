class Crypto {
  String name;
  String symbol;
  String priceUsd;
  String percentChange24h;

  Crypto({this.name, this.symbol, this.priceUsd, this.percentChange24h});

  Crypto.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        symbol = map["symbol"],
        priceUsd = map["price_usd"],
        percentChange24h = map["percentage_change_24h"];
}

abstract class CryptoRepository {
  Future<List<Crypto>> fetchCurrencies();
}

class FetchDataException implements Exception {
  final _message;

  FetchDataException([this._message]);

  String toString() {
    if (_message == null) return "Exception";
    return "Exception: $_message";
  }
}
