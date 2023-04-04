
import 'package:flutter/material.dart';
import 'package:phone_auth_otp/phone.dart';

import 'lang.dart';
import 'otp.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: 'lang',
    debugShowCheckedModeBanner: false,
    routes: {
      'lang':  (context) => Lang(),
      'phone': (context) => MyPhone(),
      'otp' :(context) =>MyVerify(),
    },
  ));
}