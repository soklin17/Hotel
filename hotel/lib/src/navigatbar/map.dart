import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel/src/component/coutom_viewmap.dart';
import 'package:hotel/src/model/map_list/map_model.dart';
class LocationPage extends StatefulWidget {

  @override
  _LocationPageState createState() => _LocationPageState();

}


class _LocationPageState extends State<LocationPage> {

  //Go to marker
  Future<void> _gotoLocation(double lat , double lng) async{
    final GoogleMapController controllerMap = await _controller.future;
    controllerMap.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat,lng),
      zoom: 20, tilt: 20,
       bearing: 350,
    ),
    ),);
  }
  //Google map controller
  Completer<GoogleMapController> _controller = Completer();


  //Initial camera
  final controller = PageController(initialPage: 1);


  static const LatLng _center =
      const LatLng(11.584858348660918, 104.89803326660031);

  MapType _currentMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blueAccent, boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(1.0, 0.0),
          ),
        ]),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            GoogleMap(

              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },

              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),

              mapType: _currentMapType,

              markers: Set<Marker>.of(getDataCategoryList.map((ee) =>Marker( markerId: MarkerId(ee["title"]),
                  position: LatLng(double.parse(ee["lat"]),double.parse(ee["lng"])),
                  infoWindow: InfoWindow(title: ee["title"]),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueRed,
                  ),
                  onTap: (){
                setState(() {
                  for(int i=0; i <getDataCategoryList.length; i++){
                    if(ee["title"] == getDataCategoryList[i]["title"]){
                      controller.animateToPage(i, duration: Duration(milliseconds: 400), curve: Curves.easeInOut,);
                    }
                  }
                });
                  }
              ),),),

            ),
            Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 150.0,
                  child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: getDataCategoryList
                        .map((ee) => GestureDetector(
                      onTap: (){
                        _gotoLocation(double.parse(ee["lat"]), double.parse(ee["lng"]));
                        print(ee["lat"]);
                        print(ee["lng"]);
                      },
                      child: CustomMarkerLocation(
                        imgUrl: ee["imageUrl"],
                        title: ee["title"],
                        address: ee["address"],
                      ),
                    ),)
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}