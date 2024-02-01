import 'package:ecom_app/models/users.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    name: '',
    email: '',
    password: '',
    address: '',
    type: '',
    token: '',
    cart: [],
  );

  User get user => _user;

  void setUser(String? userData) {
    if (userData != null) {
      try {
        _user = User.fromJson(userData);
        notifyListeners();
      } catch (e) {
        print('Error parsing user data: $e');
      }
    } else {
      print('User data is null');
    }
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}
