import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{

  String _userName = "Hariom";

  String get getUserName => _userName;

  changeUserName({required String newUserName}) async{
    _userName = newUserName;
    notifyListeners();
  }
}