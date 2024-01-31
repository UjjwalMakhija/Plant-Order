import 'package:plant_order/common/models/user.dart';
// import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Userprovider extends ChangeNotifier{
  User _user = User(
      email: '',
      id: '',
      name: '',
      password: '',
      address: '',
      type: '',
      token: '',
      cart: []);

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserfrommodel(User user) {
    _user = user;
    notifyListeners();
  }
}
