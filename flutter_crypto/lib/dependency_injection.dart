import 'package:flutter/material.dart';
import 'package:flutter_crypto/data/crypto_data.dart';
import 'package:flutter_crypto/data/crypto_data_mock.dart';
import 'package:flutter_crypto/data/crypto_data_prod.dart';
import 'package:http/http.dart' as http ;
import 'dart:async';
import 'dart:convert';

enum Flavor {MOCK, PROD}


//Dependency injection

class Injector{
  static final Injector _singleton= Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor){
    _flavor=flavor;
  }

  factory Injector(){
    return _singleton;
  }

  Injector._internal();

  CryptoRepository get cryptoRepository{
    switch(_flavor){
      case Flavor.MOCK:return MockCryptoRepository();
      default: return ProdCryptoRepository();
    }
  }

}