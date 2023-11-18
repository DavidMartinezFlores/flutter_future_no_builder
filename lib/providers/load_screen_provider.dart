import 'package:flutter/material.dart';

class LoadScreenProvider extends ChangeNotifier {

  bool isLoaded = false;
    Future isLoading() {
    return Future.delayed(const Duration(milliseconds: 4000), () {
      isLoaded = true;
      notifyListeners();
    });
  }

}