import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class uccmap extends StatefulWidget {
  @override

  _uccmapState createState() => new _uccmapState();
}

class _uccmapState extends State<uccmap> {
  List<Marker> allmarkers = [];
  @override
  void inistate()
  {
    super.initState();
    allmarkers.add(
      Marker(
          markerId: MarkerId('myMarker'),
          draggable: false,
          onTap: ()
          {
            print('Marker Tapped');
          },
          position: LatLng(5.11665, -1.29149)
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Colors.black,
          primarySwatch: Colors.indigo
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Academic Calender',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontFamily: "Quando",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: Center(
            child:
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(5.11665, -1.29149),
                  zoom: 12.0,

                ),
                markers: Set.from(allmarkers),

              ),
            ),
          )
        ),
      );

  }


}
