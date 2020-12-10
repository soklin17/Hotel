import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  GoogleMapController _controller;

  static const LatLng _center =
      const LatLng(11.584858348660918, 104.89803326660031);

  List<Marker> markerList = List();

  // LatLng lastMapPosition = center;

  MapType _currentMapType = MapType.normal;

  void _onCameraMove(CameraPosition position) {
    // _lastMapPosition = position.target;
  }

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
        child: GoogleMap(
          markers: markerList.toSet(),
          onMapCreated: (controller) {
            setState(() {
              _controller = controller;
            });
          },
          onTap: (coordinates) {
            markerList.add(Marker(
                position: coordinates,
                markerId: MarkerId(
                    '${coordinates.latitude} ${coordinates.longitude}')));
            setState(() {});
          },
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          mapType: _currentMapType,
        ),
      ),
    );
  }
}
