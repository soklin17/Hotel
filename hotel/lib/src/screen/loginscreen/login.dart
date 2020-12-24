import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel/src/component/customTextfield.dart';
import 'package:hotel/src/component/custom_Navigationbar.dart';
import 'package:hotel/src/screen/forgotpass/forgotpass.dart';
import 'package:hotel/src/screen/registerscreen/registerscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
bool touch=false;
String textError='';
String error = '';

class _LoginScreenState extends State<LoginScreen> {
  var _emailController = TextEditingController();

  var _passController = TextEditingController();

  bool _eyeOff = true;

  final _form = GlobalKey<FormState>();

  final warning = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Form(

              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   color: Colors.amberAccent,
                  //   width: double.infinity,
                  //   height: 50.0,
                  //   margin: EdgeInsets.all(8.0),
                  //   child: Row(
                  //     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      Padding(
                  //        padding: const EdgeInsets.only(right: 8.0),
                  //        child: Icon(Icons.error_outline),
                  //      ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(left: 8.0),
                  //         child: IconButton(
                  //           icon: Icon(Icons.close),
                  //           onPressed: () {
                  //             setState(() {
                  //               warning;
                  //             });
                  //           },
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  //Welcome
                  Container(
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CustomTextFeild(

                      controller: _emailController,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                        hintText: "Email address",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),

                    child: CustomTextFeild(

                      controller: _passController,
                      obscureText: _eyeOff,
                      validator: (val) {
                        if (val.isEmpty || val.length <= 5) {
                          return 'Please enter correct password';
                        }
                        return null;
                      },
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon:
                              Icon(_eyeOff ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _eyeOff = !_eyeOff;
                            });
                          },
                        ),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: FlatButton(
                          padding: EdgeInsets.only(right: 25.0),
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
                    ],

                  ),
                  Container(
                    width: double.infinity,
                    height: 48.0,
                    margin: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(150.0))),
                        color: Color(0xff2043F5),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white,fontSize: 18.0),
                        ),
                        onPressed: () async {
                          if (_form.currentState.validate()) {
                            try {
                              UserCredential userCredential = await FirebaseAuth
                                  .instance
                                  .signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passController.text,
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext builderContext) {
                                    Future.delayed(Duration(seconds: 1), () {
                                      Navigator.of(context).pop();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomNavigatorBar()));
                                    });
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      content: SingleChildScrollView(
                                        child:
                                        Text(
                                          'Your email and password successfully',
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            } on FirebaseAuthException catch (e) {
                              setState(() {
                                if (e.code == 'user-not-found') {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext builderContext) {
                                        Future.delayed(Duration(seconds: 1), () {
                                          Navigator.of(context).pop();
                                        });

                                        return AlertDialog(
                                          backgroundColor: Colors.white,
                                          // title: Text('Title'),
                                          content: SingleChildScrollView(
                                            child:
                                              Row(
                                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                              Container(
                                              child: Icon(Icons.report_gmailerrorred_sharp,color: Colors.red,),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10.0),
                                              child: Text("Your email is incorrect!",style: TextStyle(color: Colors.red),
                                              ),
                                            ),
                                            ],
                                              ),
                                          ),
                                        );
                                      });
                                } else if (e.code == 'wrong-password') {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext builderContext) {
                                        Future.delayed(Duration(seconds: 2), () {
                                          Navigator.of(context).pop();
                                        });
                                        return AlertDialog(
                                          backgroundColor: Colors.white,
                                          content: SingleChildScrollView(
                                            child:
                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Container(
                                                child: Icon(Icons.report_gmailerrorred_sharp,color: Colors.red,),
                                              ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10.0),
                                                  child: Text("Your password is incorrect!",style: TextStyle(color: Colors.red),
                                                ),
                                                ),
                                            ],
                                            ),
                                          ),
                                        );
                                      });
                                }
                              });
                            }
                          }
                        },
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
          ),
        ),
    );
  }
}
//
Future<void> _sigIn(String email, String pass, BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: pass);
    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigatorBar()));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
     // touch =true;
     textError=" No user found";
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      textError= "Wrong password provided for that user";
    }
   }
}

