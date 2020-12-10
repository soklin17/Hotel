import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hotel/src/component/custombuttom.dart';
import 'package:hotel/src/screen/forgotpass/forgotpass.dart';
import 'package:hotel/src/screen/homepageView/homepage.dart';
import 'package:hotel/src/screen/registerscreen/registerscreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _emailController = TextEditingController();

  var _passController = TextEditingController();

  bool _eyeOff = true;

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
                'Welcome Back!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            //Email
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                autocorrect: true,
                controller: _emailController,
                validator: (String val) {
                  if (val.isEmpty || !val.contains('@')) {
                    return 'Please enter valid email';
                    // } else {
                    //   try {} on FormatException {
                    //     return 'Email is invalid';
                    //   }
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                autocorrect: true,
                controller: _passController,
                obscureText: _eyeOff,
                validator: (String val) {
                  // if (val.isEmpty || !val.contains('1')) {
                  //   return 'Please enter correct password';
                  // }
                  if (val.isEmpty || val.length <= 6) {
                    return 'Please enter correct password';
                  }
                },
                onSaved: (value) {},

                //  obscureText: obscureText;
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon:
                        Icon(_eyeOff ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _eyeOff = !_eyeOff;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),

            // Text("Forgot password"),
            Container(
              padding: EdgeInsets.only(left: 200.0),
              child: FlatButton(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPass()),
                  );
                },
              ),
            ),

            //Sign in

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => Bar()));
                // },
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
                              MaterialPageRoute(builder: (context) => Bar()));
                        }
                      },
                    ),
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
