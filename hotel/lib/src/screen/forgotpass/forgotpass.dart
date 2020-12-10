import 'package:flutter/material.dart';
import 'package:hotel/src/component/custombuttom.dart';

import 'package:hotel/src/screen/loginscreen/login.dart';
import 'package:hotel/src/screen/registerscreen/registerscreen.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  var _emailController = TextEditingController();

  var _passController = TextEditingController();

  bool _eyeOff = false;

  bool saveAttempted = false;

  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Welcome
            Container(
              child: Text(
                'Forget Password?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            //Email
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                // onChanged: (textValue) {
                //   setState(() {
                //     email = textValue;
                //   });
                // },
                autocorrect: true,
                controller: _emailController,
                validator: (String val) {
                  if (val.isEmpty || !val.contains('soklin')) {
                    return 'Please enter valid email';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Email address",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),

            // Text("Forgot password"),

            //Sign in

            GestureDetector(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomButtom(
                    bgColor: Colors.blue,
                    title: "Sign In",
                    txtColor: Colors.white,
                    onTap: () {
                      if (form.currentState.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }
                    },
                  ),
                ),
              ),
            ),

            //I havn't an account
            Container(
              child: FlatButton(
                // textColor: Colors.blue,
                child: Text(
                  "I have't an account",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
