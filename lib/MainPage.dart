import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Fitness.dart';
import 'Nutrition.dart';
import 'Introduction.dart';
import 'Stress.dart';
import 'Nutrition.dart';
import 'Fitness.dart';
import 'Sleep.dart';
int health = 86;

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bacco',
          style: TextStyle(fontSize: 40),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),

      //body: Container(child: Image(image: AssetImage('inputImage/gg.jpg.png'),)),
      body: Stack(children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FourthRoute(),
                        ),
                      );},
                      child: Text('NUTRITION',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      color: Colors.greenAccent[700],
                      padding: const EdgeInsets.symmetric(
                          vertical: 142, horizontal: 27),
                    ),
                    FlatButton(
                      onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FifthRoute(),
                        ),
                      );},
                      child: Text('FITNESS',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      color: Colors.amber,
                      padding: const EdgeInsets.symmetric(
                          vertical: 142, horizontal: 40),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThirdRoute(),
                          ),
                        );
                      },
                      child: Text('STRESS',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      color: Colors.purpleAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 142, horizontal: 46),
                    ),
                    FlatButton(
                      onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SeventhRoute()));},
                      child: Text('SLEEP',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      color: Colors.blue[600],
                      padding: const EdgeInsets.symmetric(
                          vertical: 142, horizontal: 54),
                    ),
                  ]),
            ]),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 110, vertical: 240),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(1),
          child: FlatButton(
            onPressed: () {},
            shape: CircleBorder(),
            color: Colors.red[400],
            child: Stack(children: <Widget>[
              Center(
                  child: Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                    size: 150,
                  )),
              Center(
                child: Text('$health',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    )),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
