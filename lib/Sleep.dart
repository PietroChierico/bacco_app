import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Stress.dart';
import 'MainPage.dart';

double lar = 150.0;
double fontz = 25.0;

class SeventhRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sleep',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
                height: 230,
                image: NetworkImage(
                    'https://th.bing.com/th/id/Rf71e7efdbb04886eabdd466e8821d698?rik=d%2bhweNXb15c9lQ&pid=ImgRaw')),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                ' Last night',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Today()),
                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                ' Progress ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressSleep()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sleep',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
                height: 230,
                image: NetworkImage(
                    'https://image.flaticon.com/icons/png/512/547/547433.png')),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                '  Time  ',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Time()),
                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                'Quality',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quality()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Time',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50),
              child: Center(
                child: Text(
                  'You slept 6 hours,\n your score is:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlueAccent[700],
                  ),
                ),
                Text(
                  '4',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            FlatButton(
              padding: EdgeInsets.all(20.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeventhRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Quality extends StatefulWidget {
  @override
  _QualityState createState() => _QualityState();
}

class _QualityState extends State<Quality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quality',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50),
              child: Center(
                child: Text(
                  'The quality of your sleep is low. \n your score is:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlueAccent[700],
                  ),
                ),
                Text(
                  '2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height:5),
            FlatButton(
              padding: EdgeInsets.all(20.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                'Know more',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 20.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeventhRoute()),
                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.all(20.0),
              focusColor: Colors.lightBlueAccent[700],
              color: Colors.lightBlueAccent[700],
              child: Text(
                '      Back      ',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 20.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeventhRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressSleep extends StatefulWidget {
  @override
  _ProgressSleepState createState() => _ProgressSleepState();
}

class _ProgressSleepState extends State<ProgressSleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Progress',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: lar,
                  width: lar,
                  child: CircularProgressIndicator(
                    value: 0.2,
                    backgroundColor: Colors.blue[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '20%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent[400]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Text('Quality',
                  style: TextStyle(
                      fontSize: fontz,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: lar,
                  width: lar,
                  child: CircularProgressIndicator(
                    value: 0.4,
                    backgroundColor: Colors.blue[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '40%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Text('Time',
                  style: TextStyle(
                      fontSize: fontz,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}