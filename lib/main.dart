
import 'package:flutter/services.dart';
import './contacts.dart';
import './news.dart';
import './studentportal.dart';
import './uccwebsite.dart';
import './links.dart';
import './map.dart';
import './help.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity/connectivity.dart';
import './nointernet.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_share/flutter_share.dart';
import './calenderDetails.dart';
import 'package:flutter/material.dart';


void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.black, primarySwatch: Colors.indigo),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Share App Link/URL
  Future<void> share() async {
    await FlutterShare.share(
        title: 'UCCMobile App',
        text: 'Hi there, Get University of Cape Coast App (UCCMobile) on Google Play Store via the link below:',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.universityofcapecoastgh.uccmobile',
        chooserTitle: 'Share With'
    );
  }

  //Feedback
  TextEditingController _url = new TextEditingController();

  _feedback() async {
    print('Open click');
    var url = _url.text;
    _url.text =
    "mailto:feedback.app.developer@gmail.com?subject=UCCMobile%20App%20Feedback";
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('Can not launch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: "Quando",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: new BoxDecoration(
                    //color: Colors.indigo,
                      image: new DecorationImage(
                        image: new AssetImage(
                          "images/wall.jpg",
                        ),
                        fit: BoxFit.fill,
                      )),
                  child: SizedBox(
                      height: 200.0,
                      width: 350.0,
                      child: Carousel(
                        images: [
                          Image.asset('images/ucclogo.jpg'),
                          Image.asset('images/uccheader.png'),
                          Image.asset('images/wall.jpg'),
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.yellow,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.red.withOpacity(0.5),
                        borderRadius: true,
                      )
                  ),
                ),
              ],
            ),
            new ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.redAccent,
              ),
              title: new Text('Home',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),

            new ListTile(
              leading: Icon(
                Icons.map,
                color: Colors.redAccent,
              ),
              title: new Text('Campus Map',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new uccmap()));
              },
            ),
            Divider(),
            Text('      Communicate',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Alike"
              ),
            ),

            new ListTile(
              leading: Icon(Icons.share,
                color: Colors.redAccent,),
              title: new Text('Share',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: (){
                share();
              },
            ),

            new ListTile(
              leading: Icon(
                Icons.send,
                color: Colors.redAccent,
              ),
              title: new Text('Feedback',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
                _feedback();
              },
            ),
            Divider(),
            Text('      Extra',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Alike"
              ),
            ),
            new ListTile(
              leading: Icon(
                Icons.link,
                color: Colors.redAccent,
              ),
              title: new Text('Useful Links',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new UsefulLinks()));
              },
            ),
            new ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.redAccent,
              ),
              title: new Text('Useful Contact',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new UsefulContacts()));
              },
            ),

            Divider(),

            new ListTile(
              leading: Icon(
                Icons.apps,
                color: Colors.redAccent,
              ),
              title: new Text('App Version\n1.0.0',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alike"
                ),
              ),
              onTap: () {
              },
            ),

            Divider(),

          ],
        ),
      ),
      body: getListView(),
    );
  }

  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2),
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.white70,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        flightBook(context);
                      },
                      child: new Card(
                        elevation: 1.0,
                        child: new Container(
                          padding: new EdgeInsets.all(22),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  "images/uccheader.png",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => new news()));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/news.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Spacer(),
                    new Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          _checkInternetConnectivityPortal();
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/portal.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Student Portal',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  new uccmap()));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/map.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Campus Map',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  new help()));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/help.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                  child: Text(
                                    'Help',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black,
                                      fontFamily: "Quando",
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  new UsefulContacts()));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/contacts.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Contacts',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Spacer(),
                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  new UsefulLinks()));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/links.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Useful Links',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  new calenderDetailPage()//Calender()
                              ));
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/calender100.png",
                                width: 90.0,
                                height: 100.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Acad. Calender',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontFamily: "Quando",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: new GestureDetector(
                        onTap: () {
                          _checkInternetConnectivity();
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/website.png",
                                width: 90.0,
                                height: 100.0,
                              ),

                              Expanded(
                                  child: Text(
                                    'UCC Website',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black,
                                      fontFamily: "Quando",
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    return listView;
  }

  void flightBook(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Hi There!'),
      content: Text('Welcome to UCCMobile App.'),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  _checkInternetConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new UCCWebsite()));
    } else if (result == ConnectivityResult.wifi) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new UCCWebsite()));
    }
  }

  _checkInternetConnectivityPortal() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new portal()));
    } else if (result == ConnectivityResult.wifi) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new portal()));
    }
  }
}
