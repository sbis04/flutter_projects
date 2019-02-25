import 'dart:async';
import 'package:crypto_mvp_flutter/data/crypto_data.dart';

class MockCryptoRepository implements CryptoRepository {
  @override
  Future<List<Crypto>> fetchCurrencies() {
    return Future.value(currencies);
  }

}

var currencies = <Crypto> [
  Crypto(name: "Bitcoin", symbol: "BTC", priceUsd: "800.60", percentChange24h: "0.34"),
  Crypto(name: "Ripple", symbol: "XRP", priceUsd: "30.90", percentChange24h: "-0.8"),
  Crypto(name: "Ethereum", symbol: "ETH", priceUsd: "400.50", percentChange24h: "-0.49"),
];