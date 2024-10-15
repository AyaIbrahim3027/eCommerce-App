import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    // Listen for changes in the connection status
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((results) {
      // Assuming results is a List<ConnectivityResult>
      for (var result in results) {
        _updateConnectionStatus(result);
      }
    });
  }

  // Update the connection status and show a warning if there's no internet.
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      Loaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != ConnectivityResult.none;
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    // Cancel the subscription to avoid memory leaks.
    _connectivitySubscription.cancel();
  }
}
