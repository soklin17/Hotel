// import 'package:flutter/material.dart';
//
// class TextFieldCustom extends StatelessWidget {
//   final Function onTap;
//   final Function onChange;
//   final Widget suffixIcon;
//   final Widget prefixIcon;
//   final String hintText;
//   final Color backGroundColor;
//   TextFieldCustom(
//       {this.onTap,
//       this.onChange,
//       this.suffixIcon,
//       this.prefixIcon,
//       this.hintText,
//       this.backGroundColor});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10), color: backGroundColor),
//       child: TextField(
//         onTap: () => onTap(),
//         onChanged: (value) => onChange(value),
//         style: TextStyle(color: Colors.black, fontSize: 20),
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(20),
//           hintStyle: TextStyle(color: Colors.black, fontSize: 20),
//           hintText: hintText,
//           // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//           border: InputBorder.none,
//           // border: OulineInputBorder(
//           //     // borderSide: BorderSide(color: Colors.white, width: 0),
//           //     // borderRadius: BorderRadius.circular(10),
//           //     ),
//           suffixIcon: suffixIcon,
//           prefixIcon: prefixIcon,
//           // filled: true,
//           // fillColor: Colors.grey,
//         ),
//       ),
//     );
//   }
// }
