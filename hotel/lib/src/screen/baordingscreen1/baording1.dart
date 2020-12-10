
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/body.dart';
import 'package:hotel/src/component/customTextfield.dart';
import 'package:hotel/src/component/custombuttom.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';

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



