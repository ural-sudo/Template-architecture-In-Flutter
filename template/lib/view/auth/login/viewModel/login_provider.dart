


import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{

bool isLoading = false;

void changeLoading () {
  isLoading = !isLoading;
  notifyListeners();
}

LoginProvider(){
  delay();
}


Future<void> delay() async {
  changeLoading();
  await Future.delayed(Duration(seconds: 1));
  changeLoading();
}
}