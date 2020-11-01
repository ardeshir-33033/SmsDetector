import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class smsAuth extends StatefulWidget {
  @override
  _smsAuthState createState() => _smsAuthState();
}

class _smsAuthState extends State<smsAuth> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listenAuth();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SMS Authorization'),
              Container(
                child: PinFieldAutoFill(
                  codeLength: 4,
                  onCodeChanged: (val){
                    print(val);
                  },
                ),
              )
            ],
          ),
        ),
    );
  }
  void _listenAuth()async{
    await SmsAutoFill().listenForCode;
  }
}
