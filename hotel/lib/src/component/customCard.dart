import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';
import 'package:hotel/src/screen/screendetail/screenDetail.dart';

class CustomCategory extends StatefulWidget {
  String title;
  String imgUrl;
  String price;
  String address;
  String ratting;
String description;
  CustomCategory(
      {this.title, this.imgUrl, this.price, this.address, this.ratting,this.description});

  @override
  _CustomCategoryState createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Detail(
                  image: widget.imgUrl,
                  title: widget.title,
                  address: widget.address,
                  price: widget.price,
                  ratting: widget.ratting,
              description: widget.description,
                ),),);
      },
      child:  Container(

        decoration: BoxDecoration(borderRadius: BorderRadius.only(
          topRight: Radius.circular(14.0),
          topLeft: Radius.circular(14.0),
          bottomRight: Radius.circular(14.0),bottomLeft: Radius.circular(14.0),
        ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              offset: Offset(0.0, 0.0),
            ),
          ],),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.red
              ),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left:15.0,top: 15.0),
                    child: Text(widget.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 15.0,right: 20.0),
                  child: Text(widget.price,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Container(
                     margin: EdgeInsets.only(top:5.0,left: 11.0),
                     child: Icon(Icons.location_on,size: 20.0)),
                
                Expanded(

                    child: Container(
                      margin: EdgeInsets.only(top: 10.0,left: 5.0),
                      child: Text(widget.address,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 11.0,bottom: 10.0),
                    child: Icon(Icons.star,size: 20,)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5.0,bottom: 7.0),
                    child: Text(widget.ratting,
                      overflow: TextOverflow.ellipsis,),),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: RaisedButton(
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    );
  }
}
