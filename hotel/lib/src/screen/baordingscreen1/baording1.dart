
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/body.dart';

void main(){
  runApp(OnBaording());
}

class OnBaording extends StatelessWidget {
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  bool _eyeOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body (),
    );
  }
}



