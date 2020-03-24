import 'package:Customer/screens/home/mainUi.dart';
import 'package:Customer/screens/home/providerEdit.dart';
import 'package:flutter/material.dart';
import 'package:Customer/screens/login/login.dart';
import 'package:Customer/screens/login/register.dart';
import 'package:Customer/screens/login/email_register.dart';
import 'package:Customer/screens/login/forgot_password.dart';
import 'package:Customer/screens/login/confirmation.dart';
import 'package:Customer/screens/login/new_password.dart';
import 'package:Customer/screens/home/settings.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String , WidgetBuilder>{
        '/LoginPage' : (BuildContext context) =>new LoginPage(),
        '/Register' : (BuildContext context) =>new Register(),
        '/EmailRegister' : (BuildContext context) =>new EmailRegister(),
        '/ForgotPassword' : (BuildContext context) =>new ForgotPassword(),
        '/Confirmation' : (BuildContext context) =>new Confirmation(),
        '/NewPassword' : (BuildContext context) =>new NewPassword(),
        '/MainUi' : (BuildContext context) =>new MainUi(),
        '/Settings' : (BuildContext context) =>new Settings(),
        '/ProviderEdit' : (BuildContext context) =>new ProviderEdit(),


      },
      home: new LoginPage(),
    );
  }
}

