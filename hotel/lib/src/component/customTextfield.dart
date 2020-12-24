// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final bool obscureText;
//   final Widget prefixIcon;
//   final Widget suffixIcon;
//   final String hintText;
//   final TextInputType keyboardType;
//   final FormFieldSetter<String> onSaved;
// final Function validator;
//   const CustomTextField({
//     this.validator,
//     Key key,
//     this.controller,
//     this.obscureText = false,
//     this.hintText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.keyboardType,
//     this.onSaved,
//   }) : super(key: key);
//
//   @override
//   _CustomTextFieldState createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.black12,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: TextFormField(
//         autocorrect: true,
//         keyboardType: widget.keyboardType,
//         controller: widget.controller,
//         obscureText: widget.obscureText,
//         validator: (value)=>widget.validator(value),
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           prefixIcon: widget.prefixIcon,
//           suffixIcon: widget.suffixIcon,
//           border: InputBorder.none,
//           hintText: widget.hintText,
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';


class CustomTextFeild extends StatefulWidget {

  final TextEditingController controller;
  final bool obscureText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final TextInputType keyboardType;
  final FormFieldSetter<String> onSaved;
final Function validator;
  const CustomTextFeild({
    this.validator,
    Key key,
    this.controller,
    this.obscureText = false,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.onSaved,
  }) : super(key: key);
  @override
  _CustomTextFeildState createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
          child: TextFormField(
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: widget.keyboardType,
           controller: widget.controller,
           obscureText: widget.obscureText,
           validator: (value)=>widget.validator(value),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              filled: true,
              fillColor: Colors.black12,
              border: InputBorder.none,
              suffixIcon: widget.suffixIcon,
              enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13.0),
                borderSide: BorderSide(color: Colors.white12)
    ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Colors.white12)
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Colors.white12)
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Colors.white12)
              ),
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(13.0),
              // ),
            ),
          ),

      );
  }
}
