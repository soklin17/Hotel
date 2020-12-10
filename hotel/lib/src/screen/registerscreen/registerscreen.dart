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
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: TextFormField(
                  autocorrect: true,
                  controller: _usenameController,
                  validator: (String val) {
                    if (val.isEmpty || !val.contains('')) {
                      return 'Please enter usename';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Usename",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10, top: 20.0, bottom: 20),
                child: TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailsController,
                  // validator: (String val) {
                  //   if (val.isEmpty || !val.contains('@')) {
                  //     return 'Please enter valid email';
                  //   }
                  // },
                  validator: (value) =>
                      value.isEmpty ? 'Please enter your email' : null,
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
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextFormField(
                  autocorrect: true,
                  obscureText: _eyeOff,
                  controller: _passwordController,
                  validator: (val) {
                    if (val.isEmpty || !val.contains('')) {
                      return 'Make sure your password!';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _eyeOff ? Icons.visibility_off : Icons.visibility),
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
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CustomButtom(
                      bgColor: Colors.blue,
                      title: "Register",
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
              Container(
                child: FlatButton(
                  // textColor: Colors.blue,
                  child: Text(
                    "I've already an account",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
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
