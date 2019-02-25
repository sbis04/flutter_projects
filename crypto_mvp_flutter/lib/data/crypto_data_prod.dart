import 'dart:convert';
import 'dart:async';

import 'package:crypto_mvp_flutter/data/crypto_data.dart';
import 'package:http/http.dart' as http;

class ProdCryptoRepository implements CryptoRepository {
  final String cryptoUrl = "https://api.coinmarketcap.com/v1/ticker"; 

  @override
  Future<List<Crypto>> fetchCurrencies() async{
    http.Response response = await http.get(cryptoUrl);
    final List responseBody = jsonDecode(response.body);
    final statusCode = response.statusCode;

    if(statusCode != 200 || responseBody == null) {
      throw FetchDataException(
        "An error occured: [Status Code: $statusCode]"
      );
    }

    return responseBody.map((c) => Crypto.fromMap(c)).toList();
  }

}