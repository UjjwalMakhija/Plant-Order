import 'package:flutter/material.dart';
import 'package:plant_order/LaunchPage/screens/Launch_screen.dart';
import 'package:plant_order/common/constants/utils.dart';
import 'package:plant_order/common/global_variables.dart';
import 'package:plant_order/common/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:plant_order/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plant_order/erroehandler.dart';

class Authservice {
  void Signupuser({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
        email: email,
        name: name,
        password: password,
        id: '',
        token: '',
        cart: [],
        address: '',
        type: '',
      );

      http.Response res = await http.post(
        Uri.parse('$uri/auth/signup'),
        body: user.tojson(),
        headers: <String, String>{
          'content-type': 'application/json ; charset = utf-8'
        },
      );
      httperrrorhandler(
          response: res,
          context: context,
          success: () {
            showsnackbar(
                context, 'Account created now login with the same credentials');
          });
    } catch (e) {
      showsnackbar(context, e.toString());
    }
  }

  void SigninUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(Uri.parse('$uri/api/signin'),
          body: jsonEncode({'email': email, 'password': password}),
          headers: <String, String>{
            'content-type': 'application/json; charset=utf8'
          });
      httperrrorhandler(
          response: res,
          context: context,
          success: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<Userprovider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushNamed(context, Landingpage.routeName);
          });
    } catch (e) {
      showsnackbar(context, 'An error occured during signin ${e.toString()}');
    }
  }
}
