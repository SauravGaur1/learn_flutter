import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier{
  String _name = '';
  bool _isLoading = false;
  bool _loginSuccessful = false;

  get getName {return _name;}

  set setName(String value) {
    _name = value;
    notifyListeners();
  }

  bool getLoading() {return _isLoading;}

  void setLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool getLogin() {return _loginSuccessful;}

  void setLoginSuccessful() {
    _loginSuccessful = !_loginSuccessful;
    notifyListeners();
  }
}

