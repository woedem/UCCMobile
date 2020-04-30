import 'package:flutter/material.dart';


class details extends StatefulWidget {
  final eventName;
  details({this.eventName});
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: new Text(widget.eventName), ),
        ],
      ),
    );
  }
}
