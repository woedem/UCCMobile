import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  _notificationPageState createState() => new _notificationPageState();
}

class _notificationPageState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Card(
              elevation: 5.0,
              child: new Container(
                padding: new EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 2.0),
                child: new Row(
                  children: <Widget>[
                    //Icon(Icons.border_all, color: Colors.deepPurple,),
                    Expanded(
                      child: new Text(
                        '\nWelcome To UCCMobile App Notification Centre\n',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black,
                            fontWeight: FontWeight.w700
                          // fontSize: 20,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.spa,
                      color: Colors.indigo,
                    )
                  ],
                ),
              ),
            ),
            new Card(
              elevation: 5.0,
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                child: new Row(
                  children: <Widget>[
                    //Icon(Icons.border_all, color: Colors.deepPurple,),
                    Expanded(
                      child: new Text(
                        'All notification that the school will send will appear here and have some time to expire',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                          // fontSize: 20,
                        ),
                      ),
                    ),

                    Icon(
                      Icons.spa,
                      color: Colors.indigo,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}