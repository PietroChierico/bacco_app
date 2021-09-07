import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Introduction.dart';
import 'MainPage.dart';


double lar = 150.0;
double fontz = 25.0;

class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fitness',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber[50],
      // ignore: deprecated_member_use
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
            ),
            Image(
                alignment: Alignment.bottomCenter,
                height: 270,

                image: NetworkImage(
                    'https://img.icons8.com/bubbles/2x/exercise.png')),
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.amber,
              color: Colors.amber,
              child: Text(
                'Enter physical activity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PAs()),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.amber,
              color: Colors.amber,
              child: Text(
                '           Progress            ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Premios()),
              );},
            ),

          ],
        ),
      ),
    );
  }
}

class PAs extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<PAs> {

  var time;

  final timeCon = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          'Fitness',
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 1.5,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[


          SizedBox(height: 50),

          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              'Enter the Physical Activity',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[400],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(25),
            child: AutocompleteExampleApp(),
          ),

          SizedBox(height: 30),

          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              'Enter the time',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[400],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 25,vertical:10 ),
            child: TextField(
              controller: timeCon,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 90),
          FlatButton(
            padding: EdgeInsets.all(25.0),
            focusColor: Colors.amber,
            color: Colors.amber,
            child: Text(
              '           Submit            ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                height: 1.0,
              ),
            ),
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FifthRoute(),
              ),
            );},
          ),



        ],
      ),
    );
  }
}
class AutocompleteExampleApp extends StatelessWidget {


  static const List<String> _kOptions = <String>[
    'jogging',
    'basketball',
    'golf',
    'bicycling, mountain',
    'volleyball',
    'boxing',
    'yoga, Power',
    'bicycling',
    'football',
    'water polo',
    'walking at low pace',
    'fishing',
  ];



  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You just selected $selection');
      },
    );
  }
}


class Premios extends StatefulWidget {
  @override
  _PremiosState createState() => _PremiosState();
}

class _PremiosState extends State<Premios> with TickerProviderStateMixin {
  AnimationController controller;
  /* void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false, max: 1);
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fitness\' Progress',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: lar,
                  width: lar,
                  child: CircularProgressIndicator(
                    value: 0.90,
                    backgroundColor: Colors.amber[100],
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.amber[700]),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '90%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[800]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.amber[700],
              child: Text('Progress of \n the day',
                  style: TextStyle(
                      fontSize: fontz,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: lar,
                  width: lar,
                  child: CircularProgressIndicator(
                    value: 0.25,
                    backgroundColor: Colors.amber[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.amber[400]),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '25%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[400]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.amber[400],
              child: Text('Progress of\nthe week',
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





/*class MajorPAs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text(
        'Fitness',
        style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        letterSpacing: 2.0,
    ),
    ),
    backgroundColor: Colors.amber,
    ),
    backgroundColor: Colors.amber[50],
    // ignore: deprecated_member_use
    body: Center(
    child: Column(
    children: <Widget>[
      Text('ciao'),

      Row(
        children: <Widget>[
          FlatButton(onPressed: () {    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PAs()),
          );}, child: Text('ciao'),),
          FlatButton(onPressed: () {}, child: Text('ciao'),),
        ],
      )
    ]
    )
    )
    );
  }
}*/