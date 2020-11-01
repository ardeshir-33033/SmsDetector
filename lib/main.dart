import 'package:flutter/material.dart';
import 'package:smstest/smsAuth.dart';
import 'package:sms_autofill/sms_autofill.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Auth(),
    );
  }
}

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Login / Register'),
          onPressed: () async {
            final signCode = await SmsAutoFill().getAppSignature;
            print('signCode:$signCode');
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => smsAuth()));
          },
        ),
      ),
    );
  }

}
