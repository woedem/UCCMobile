import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './hybridMap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

class uccmap extends StatefulWidget {
  @override
  _uccmapPageState createState() => new _uccmapPageState();
}
Completer<GoogleMapController> _controller = Completer();

class _uccmapPageState extends State<uccmap> {
  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Campus Map',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: "Quando",
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map, color: Colors.white,),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new uccmaphybrid()
                  )
              );
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus, color: Colors.red),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchPlus, color: Colors.red),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }


  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 25.0),
        height: 130.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://scontent.facc6-1.fna.fbcdn.net/v/t31.0-8/1939540_791983504163827_950162747_o.jpg?_nc_cat=111&_nc_ohc=mEN_Y5YNxg8AQkTw2rDH4ZOoyNVp0Sj4tdEMtAnlMZFSePFDLrWKp4mbg&_nc_ht=scontent.facc6-1.fna&oh=7ef0b9a615469dba4da789fbcb7d58a7&oe=5EAE5A79",
                  5.11742, -1.29263, "CELT", "24/7 Service"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.allghanadata.com/content/images/articles/v-635876386508654115/gh_ucc_oldsite_1011251831.jpg",
                  5.105277, -1.284317, "UCC Administration", "8:00 AM - 5:00 PM"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://scontent.facc6-1.fna.fbcdn.net/v/t31.0-8/1939540_791983504163827_950162747_o.jpg?_nc_cat=111&_nc_ohc=mEN_Y5YNxg8AQkTw2rDH4ZOoyNVp0Sj4tdEMtAnlMZFSePFDLrWKp4mbg&_nc_ht=scontent.facc6-1.fna&oh=7ef0b9a615469dba4da789fbcb7d58a7&oe=5EAE5A79",
                  5.11742, -1.29263, "G - Block", "24/7 Service"),
            ),

            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipNkFkCOAlAEOSA207jiYeopi2IAA8AOAlyEZwVE=w241-h160-k-no",
                  5.11585, -1.29296, "NEC", "6:00 AM - 8:30 PM"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipNkFkCOAlAEOSA207jiYeopi2IAA8AOAlyEZwVE=w241-h160-k-no",
                  5.11688, -1.29358, "Institute of Education", "8:00 AM - 5:00 PM"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?hl=en&pb=!1s0xfddf9348ffeba9f%3A0x55ab185bf1eabb4d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ%3Dw240-h160-k-no!5ssam%20joah%20library%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ&sa=X&ved=2ahUKEwj8-o_tr_DmAhXkQEEAHU67BIsQoiowCnoECAkQBg",
                  5.11665, -1.29149, "Sam Jonah Library", "8:00 AM - 10:00 PM"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?hl=en&pb=!1s0xfddf9348ffeba9f%3A0x55ab185bf1eabb4d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ%3Dw240-h160-k-no!5ssam%20joah%20library%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ&sa=X&ved=2ahUKEwj8-o_tr_DmAhXkQEEAHU67BIsQoiowCnoECAkQBg",
                  5.11688, -1.29358, "LT - Block", "24/7 Service"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?hl=en&pb=!1s0xfddf9348ffeba9f%3A0x55ab185bf1eabb4d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ%3Dw240-h160-k-no!5ssam%20joah%20library%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ&sa=X&ved=2ahUKEwj8-o_tr_DmAhXkQEEAHU67BIsQoiowCnoECAkQBg",
                  5.11668, -1.29296, "Paliament House", "24/7 Service"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?hl=en&pb=!1s0xfddf9348ffeba9f%3A0x55ab185bf1eabb4d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ%3Dw240-h160-k-no!5ssam%20joah%20library%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ&sa=X&ved=2ahUKEwj8-o_tr_DmAhXkQEEAHU67BIsQoiowCnoECAkQBg",
                  5.11585, -1.29296, "Science Market", "24/7 Service"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?hl=en&pb=!1s0xfddf9348ffeba9f%3A0x55ab185bf1eabb4d!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ%3Dw240-h160-k-no!5ssam%20joah%20library%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMJv6T8wCT7woYO_LdIjAEcdhDV-c_0WbV5WRaQ&sa=X&ved=2ahUKEwj8-o_tr_DmAhXkQEEAHU67BIsQoiowCnoECAkQBg",
                  5.11742, -1.29262, "Shurtle Station", "24/7 Service"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "http://photos.myjoyonline.com/photos/news/201903/7374398142720_1343864178647.jpg",
                  5.105311, -1.283328, "UCC Hospital", "24/7 Service"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String facilityName, String workHour) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(facilityName, workHour),
                    ),
                  ),

                ],)
          ),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String facilityName, String workHour) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(facilityName,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(workHour,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                    )),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStarHalf,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                    )),
              ],
            )),

        SizedBox(height: 5.0),
        Container(
            child: Text(
              "Staff \u00B7 Students \u00B7 Visitors",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: LatLng(5.11665, -1.29149), zoom: 15.3),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          samJonahMarker,
          UCCHospitalMarker,
          ShurtleStationMarker,
          ScienceMarketMarker,
          LTBlockMarker,
          InstituteofEducationMarker,
          necMarker,
          GBlockMarker,
          CeltMarker,
          AdministrationMarker,
          PaliamentHouseMarker,
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, long), zoom: 15, tilt: 50.0,
          bearing: 45.0,)));
  }
}

Marker gramercyMarker = Marker(
  markerId: MarkerId('gramercy'),
  position: LatLng(40.738380, -73.988426),
  infoWindow: InfoWindow(title: 'Gramercy Tavern'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

  Marker UCCHospitalMarker = Marker(
    markerId: MarkerId('UCCHospital'),
    position: LatLng(5.10529, -1.28688),
    infoWindow: InfoWindow(title: 'UCC Hospital'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed,
    ),
  );
  Marker samJonahMarker = Marker(
    markerId: MarkerId('Sam Jonah'),
    position: LatLng(5.11665, -1.29149),
    infoWindow: InfoWindow(title: 'Sam Jonah'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed,
    ),
  );

  //New York Marker

  Marker AdministrationMarker = Marker(
    markerId: MarkerId('Administration'),
    position: LatLng(5.10549, -1.28664),
    infoWindow: InfoWindow(title: 'UCC Administration'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed,
    ),
  );
  Marker CeltMarker = Marker(
    markerId: MarkerId('Celt'),
    position: LatLng(40.729640, -73.983510),
    infoWindow: InfoWindow(title: 'CELT'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed,
    ),
  );
  Marker GBlockMarker = Marker(
    markerId: MarkerId('GBlock'),
    position: LatLng(5.11742, -1.29263),
    infoWindow: InfoWindow(title: 'G - Block'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed,
    ),
  );

Marker necMarker = Marker(
  markerId: MarkerId('nec'),
  position: LatLng(40.742451, -74.005959),
  infoWindow: InfoWindow(title: 'NEC'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker InstituteofEducationMarker = Marker(
  markerId: MarkerId('Celt'),
  position: LatLng(40.729640, -73.983510),
  infoWindow: InfoWindow(title: 'CELT'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);


Marker LTBlockMarker = Marker(
  markerId: MarkerId('lTBlock'),
  position: LatLng(5.11688, -1.29358),
  infoWindow: InfoWindow(title: 'LT - Block'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker ScienceMarketMarker = Marker(
  markerId: MarkerId('ScienceMarket'),
  position: LatLng(5.11585, -1.29296),
  infoWindow: InfoWindow(title: 'Science Market'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker ShurtleStationMarker = Marker(
  markerId: MarkerId('ShurtleStation'),
  position: LatLng(5.11742, -1.29262),
  infoWindow: InfoWindow(title: 'Shurtle Station'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

Marker PaliamentHouseMarker = Marker(
  markerId: MarkerId('ShurtleStation'),
  position: LatLng(5.11668, -1.29296),
  infoWindow: InfoWindow(title: 'Shurtle Station'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);