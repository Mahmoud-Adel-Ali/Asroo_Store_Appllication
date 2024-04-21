// ignore_for_file: omit_local_variable_types

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  // private constactor
  ConnectivityController._();

  // single ton patern
  static final ConnectivityController instance = ConnectivityController._();
  //
  ValueNotifier<bool> isConnected = ValueNotifier(true);
  Future<void> init() async {
    // final result = await Connectivity();
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    // listen to changing in internet
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnected.value = true;
      return true;
    } else {
      isConnected.value = false;
      return false;
    }
  }
}
