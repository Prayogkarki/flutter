import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_crypto/main.dart';
import 'dart:convert';
import 'package:flutter_crypto/dependency_injection.dart';
import 'package:flutter_crypto/data/crypto_data.dart';



abstract class CryptoListViewContract{
  void onLoadCryptoComplete(List<Crypto> items);
  void onLoadCryptoError();
}

class CryptoListPresenter{
  CryptoListViewContract _view;
  CryptoRepository _repository;

  CryptoListPresenter(this._view){
    _repository= new Injector().cryptoRepository;

  }

  void loadCurrencies(){
    _repository
        .fetchCurrencies()
        .then((c)=>_view.onLoadCryptoComplete(c))
        .catchError((onError)=>_view.onLoadCryptoError());
  }
}