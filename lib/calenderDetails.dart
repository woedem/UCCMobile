import 'package:flutter/material.dart';
import './details.dart';

class calenderDetailPage extends StatefulWidget {
  @override
  _calenderDetailPageState createState() => _calenderDetailPageState();
}

class _calenderDetailPageState extends State<calenderDetailPage> {
  List <String> semesterone =
  [
    "Online Registration (Continuing Students)\n\nAugust 19, 2019 to August 31, 2019",
    "Students report (Fresh Students)\n\nAugust 24, 2019",
    "Orientation\n\nAugust 26, 2019 to August 28, 2019",
    "Students Registration (Fresh Students)\n\nAugust 29, 2019 to August 31, 2019",
    "Students Report (Continuing Students)\n\nAugust 31, 2019",
    "Lectures Begin\n\nSeptember 2, 2019",
    "Congregation\n\nSeptember 13, 2019 to September 14, 2019",
    "Adding and Dropping of Courses\n\nSeptember 23, 2019 to September 27, 2019",
    "Matriculation\n\nSeptember 28, 2019",
    "First Continue Assessment (CA)\n\nSeptember 30, 2019 to October 4, 2019",
    "Second Continue Assessment (CA)\n\nNovember 4, 2019 to November 8, 2019",
    "Display of CA Results\n\nNovember 18, 2019 to November 22, 2019",
    "Lectures End\n\nNovember 29, 2019",
    "Revision Period\n\nDecember 2, 2019 to December 6, 2019",
    "Semester Examination\n\nDecember 9, 2019 to December 20, 2019",
    "Students Go Down\n\nDecember 21, 2019",
    "END OF FIRST SEMESTER",
  ];

  List<String> semesterTwo =
      [
        "Online Registration (Continuing Students)\n\nJanuary 13, 2020 to January 24, 2020",
        "Students Report (Fresh Students)\n\nJanuary 18, 2020",
        "Lectures Begin\n\nFebruary 27, 2020",
        "Adding and Dropping of Courses\n\nFebruary 10, 2020 to February 14, 2020",
        "First Continue Assessment (CA)\n\nFebruary 24, 2020 to February 28, 2020",
        "Second Continue Assessment (CA)\n\nMarch 30, 2020 to April 3, 2020",
        "Display of CA Results\n\nApril 13, 2020 to April 3, 2020",
        "Lectures End\n\nApril 24, 2020",
        "Revision Period\n\nApril 17, 2020 to May 1, 2020",
        "Semester Examination\n\nMay 4, 2020 to May 15, 2020",
        "Long Vacation Break\n\nMay 16, 2020 to August 21, 2020",
        "Sandwish Programmes\n\nJune 10, 2020 to August 14, 2020",
        "Release of Results\n\nJune 10, 2020 to July 3, 2020",
        "END OF SECOND SEMESTER",
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.white, primarySwatch: Colors.indigo),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text('FIRST SEMESTER',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "Quando",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text('SECOND SEMESTER',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "Quando",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ]),
            title: Text('Academic Calender',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontFamily: "Quando",
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
            ],

          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                itemCount: semesterone.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: ListTile(
                      title: new Text(semesterone[index]),
                      trailing: Icon(Icons.ac_unit,
                        color: Colors.red,),
                      onTap: (){
                    },),
                  );
                },
              ),


              /*
                  Semester Two
               */
              ListView.builder(
                itemCount: semesterTwo.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: ListTile(
                      title: new Text(semesterTwo[index]),
                      trailing: Icon(Icons.ac_unit,
                        color: Colors.red,),
                      onTap: (){
                      },),
                  );
                },
              ),
            ],
          )
        ),
      ),
    );
  }

  void detail(String eventName){

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Card(
          child: ListTile(title: new Text(eventName),),
        ),
      );
    }));
  }
}
