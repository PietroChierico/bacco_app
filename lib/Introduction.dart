import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'MainPage.dart';
import 'Stress.dart';

double space = 5;

void main() => runApp(MaterialApp(
  title: 'Bacco',
  home: FirstRoute(),
));

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  var _name;
  var _age;
  var _weight;
  var _height;

  final nameCon = new TextEditingController();
  final surnameCon = new TextEditingController();
  final ageCon = new TextEditingController();
  final weightCon = new TextEditingController();
  final heightCon = new TextEditingController();

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 35,
            ),
            Text(
              'GET STARTED',
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: nameCon,
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: surnameCon,
                decoration: InputDecoration(
                  hintText: 'Enter your Surname',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: space,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: ageCon,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: space,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: weightCon,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your weight [kg]',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: space,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: heightCon,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your height [m]',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.grey[400],
                child: FlatButton(
                  child: Text(
                    'PROCEED',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      _name = nameCon;
                      _age = ageCon;
                      _weight = weightCon;
                      _height = heightCon;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondRoute(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

/*           onpressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondRoute(),
            ),
          );
        },
  */