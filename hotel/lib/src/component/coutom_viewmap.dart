// import 'package:flutter/material.dart';
//
// class CustomViewMap extends StatefulWidget {
//
//
//   final String imgUrl;
//   final String address;
//   final String title;
//   CustomViewMap({this.imgUrl,this.address,this.title});
//   @override
//   _CustomViewMapState createState() => _CustomViewMapState();
// }
//
// class _CustomViewMapState extends State<CustomViewMap> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(child: Align(
//       alignment: Alignment.bottomLeft,
//       child: Container(
//         height: 140.0,
//         child: ListView(children: [
//           Container(
//             margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
//             width: 360.0,
//             height: 140.0,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//                 color: Colors.white
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(left: 20.0,right: 20.0),
//                   height: 90.0,
//                   width: 90.0,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(widget.imgUrl),
//                       fit: BoxFit.cover,
//                     ),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                       ),
//                       color: Colors.white
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 30.0,left: 5.0),
//                       child: Text(widget.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                             margin: EdgeInsets.only(top:5.0),
//                             child: Icon(Icons.location_on,size: 20.0),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top:8.0),
//                           child: Text(widget.address,style: TextStyle(color:Colors.black),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//         ),
//       ),
//     ),
//     );
//   }
// }
//
//
//
//
// import 'package:custom_hotel/models/detail_homepage/data_cardcategory.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CustomMarkerLocation extends StatelessWidget {
  String title;
  String imgUrl;
  String rating;
  double starRating;
  String address;
  String price;
  CustomMarkerLocation(
      {this.imgUrl, this.title, this.rating, this.starRating, this.address,this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0, right: 10.0, left: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 0.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      width: 360.0,
      height: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Images
          Container(
            margin: const EdgeInsets.only(left: 20.0, top: 15.0),
            width: 85.0,
            height: 85.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: AssetImage("assets/images/room1.jpg"),
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
          ),
          //title
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "$title",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    margin: const EdgeInsets.only(left: 5.0),
                  ),

                  //Location
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.location_on,
                            size: 19.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text("$address"),
                        ),
                      ],
                    ),
                  ),

                  //Star
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5.0, top: 4.0),
                          child: Container(
                            child: SmoothStarRating(
                              color: Color(0xffFFD801),
                              borderColor: Color(0xffFFD801),
                              rating: 5,
                              size: 20.0,
                              isReadOnly: true,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0, top: 5.0),
                          child: Text(
                            "(100)",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
