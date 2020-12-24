import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/customTextfield.dart';

import 'package:hotel/src/component/custombuttom.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _emailsController = TextEditingController();

  var _passwordController = TextEditingController();

  var _usenameController = TextEditingController();

  bool _eyeOff = true;

  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: form,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  "Create An Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 0.0, right: 0.0, top: 20.0),
                child: CustomTextFeild(

                  controller: _usenameController,
                  validator: (String val) {
                    if (val.isEmpty || !val.contains('')) {
                      return 'Please enter usename';
                    }
                  },
                    hintText: "Usename",
                    prefixIcon: Icon(Icons.person),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0, top: 20.0, bottom: 20),
                child: CustomTextFeild(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailsController,
                  
                  // validator: (value) =>
                  //     value.isEmpty ? 'Please enter your email' : null,
                    hintText: "Email address",
                    prefixIcon: Icon(Icons.email),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: CustomTextFeild(
                  obscureText: _eyeOff,
                  controller: _passwordController,
                  validator: (val) {
                    if (val.isEmpty || val.length <= 5) {
                      return 'Make sure your password!';
                    }
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
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CustomButtom(
                      bgColor: Color(0xff2043F5),
                      title: "Register",
                      txtColor: Colors.white,
                      onTap: () async {
                        if (form.currentState.validate()) {
                          await register(_emailsController.text,
                              _passwordController.text, context);
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
                    "I've already an account",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> register(String email, String pass, BuildContext context) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: pass);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
