import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:plant_order/common/constants/utils.dart';

void httperrrorhandler({
  required http.Response response,
  required BuildContext context,
  required VoidCallback success,
}) {
  switch (response.statusCode) {
    case 200:
      success();
      break;
    case 400:
      showsnackbar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      showsnackbar(context, jsonDecode(response.body)['error']);
      break;
    default:
      showsnackbar(context,response.body);
  }
}
