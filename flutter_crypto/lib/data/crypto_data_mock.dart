import 'package:flutter/material.dart';
import 'package:flutter_crypto/home_page.dart';
import 'package:flutter_crypto/data/crypto_data.dart';
import 'package:http/http.dart' as http ;
import 'dart:async';
import 'dart:convert';


class MockCryptoRepository implements CryptoRepository{
  @override
  Future<List<Crypto>> fetchCurrencies(){
    return Future.value(currencies);

  }
}

var currencies = <Crypto> [
  new Crypto(name:"Bitcoin", price_usd: "800.60",percent_change_1h: "-0.7"),
new Crypto(name:"Ethereum", price_usd: "650.30",percent_change_1h: "0.85"),
new Crypto(name:"Ripple", price_usd: "300.60",percent_change_1h: "-0.25"),

];