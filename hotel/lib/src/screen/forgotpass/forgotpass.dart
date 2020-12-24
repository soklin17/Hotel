import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/customTextfield.dart';
import 'package:hotel/src/component/custombuttom.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';
import 'package:hotel/src/screen/registerscreen/registerscreen.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  var _emailController = TextEditingController();
  final form = GlobalKey<FormState>();
  String email = '';

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomTextFeild(
                controller: _emailController,
                validator: (val) {
                  if (val.isEmpty || !val.contains('@')) {
                    return 'Please enter valid email';
                  } else {
                    email = val;
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                hintText: "Email address",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: CustomTextField(
            //
            //     controller: _emailController,
            //     validator: (val) {
            //       if (val.isEmpty || !val.contains('@')) {
            //         return 'Please enter valid email';
            //       } return null;
            //     },
            //     keyboardType: TextInputType.emailAddress,
            //     hintText: 'Emial address',
            //     prefixIcon: Icon(Icons.email),
            //
            //
            //   ),
            // ),
            GestureDetector(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomButtom(
                    bgColor: Color(0xff2043F5),
                    title: "Forget Password",
                    txtColor: Colors.white,
                    onTap: () async {
                      if (form.currentState.validate()) {
                        FirebaseAuth.instance
                            .sendPasswordResetEmail(email: email)
                            .then(
                              (value) =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen())),
                            );

                      }
                    },
                  ),
                ),
              ),
            ),
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
