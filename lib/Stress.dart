import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MainPage.dart';

double sizepwi = 20;
double lar = 150.0;
double fontz = 25.0;

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Stress',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.purple[50],
      // ignore: deprecated_member_use
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Image(
                alignment: Alignment.bottomCenter,
                height: 200,
                image: NetworkImage(
                    'https://image.flaticon.com/icons/png/512/3062/3062521.png')),
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.purpleAccent,
              color: Colors.purpleAccent,
              child: Text(
                'Begin PWI test',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StressPWI()),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.purpleAccent,
              color: Colors.purpleAccent,
              child: Text(
                '     Progress     ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressPWI()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  var quesiti = [
    /* 'Quanto sei soddisfatto del tuo modo di vivere? ',
    'Quanto sei soddisfatto della tua salute ?',
    'Quanto sei soddisfatto dei tuoi traguardi?',
    'Quanto sei soddisfatto delle tue relazioni personali',
    'Quanto sei soddisfatto del sentirti parte della tua comunità?',
    'Quanto sei soddisfatto della tua sicurezza nel futuro?',
    'Quanto sei soddisfatto del tuo sentirti sicuro?;
    */
    'How satisfied are you with your standard of living?',
    'How satisfied are you with your health?',
    'How satisfied are you with what you are achieving in life?',
    'How satisfied are you with your personal relationships?',
    'How satisfied are you with how safe you feel? ',
    'How satisfied are you with feeling part of your community? ',
    'How satisfied are you with your future security? '
  ];
}

var i = 0;
var questions = Question();
var count = 0;
var icons = [
  Icons.filter_1,
  Icons.filter_2,
  Icons.filter_3,
  Icons.filter_4,
  Icons.filter_5,
  Icons.filter_6,
  Icons.filter_7,
  Icons.filter_8,
  Icons.filter_9,
  Icons.filter_1,
];

class StressPWI extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<StressPWI> {
  void domande() {
    setState(() {
      if (i < 6) {
        i++;
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => StressPWI_2()));
      }
    });
  }

//prima pagina

//domanda1
/*class Domande extends StatefulWidget {
  @override
  _DomandeState createState() => _DomandeState();
}*/

/*class _DomandeState extends State<Domande> {
  @override*/
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'PWI test ',
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 1.5,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Center(
            child: Container(
              color: Colors.purple[200],
              padding: EdgeInsets.all(35),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                questions.quesiti[i],
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Image(
            image: NetworkImage(
                'https://cdn0.iconfinder.com/data/icons/life-skill-flat-self-improvement/512/coping_with_stress-512.png'),
            height: 230,
          ),
          SizedBox(height: 40),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                for (int i = 1; i <= 5; i++)
                  IconButton(
                      padding: EdgeInsets.all(5.0),
                      color: Colors.purple[800],
                      iconSize: 45,
                      icon: Icon(icons[i - 1]),
                      onPressed: () {
                        domande();

                        setState(() {
                          count = count + i;
                        });
                      })
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                for (int i = 6; i <= 10; i++)
                  IconButton(
                      iconSize: 45,
                      padding: EdgeInsets.all(5.0),
                      color: Colors.purple[800],
                      icon: Icon(icons[i - 1]),
                      onPressed: () {
                        domande();

                        setState(() {
                          count = count + i;
                        });
                      })
              ],
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

class StressPWI_2 extends StatefulWidget {
  @override
  _StressPWI_2State createState() => _StressPWI_2State();
}

class _StressPWI_2State extends State<StressPWI_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'PWI TEST',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        centerTitle: (5 > 1),
      ),
      backgroundColor: Colors.purple[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50),
          Center(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Your Stress Score is:',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.purple[500],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),  Center(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                ' ${(count / 7).toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.purple[500],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 70),


          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              color: Colors.purpleAccent,
              child: Text(
                'Know more',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SixthRoute()));
              }),
          SizedBox(height: 20),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              color: Colors.purpleAccent,
              child: Text(
                '      Back      ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute()));
              }),
        ],
      ),
    );
  }
}

class SixthRoute extends StatefulWidget {
  @override
  _SixthRouteState createState() => _SixthRouteState();
}

class _SixthRouteState extends State<SixthRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'PWI TEST',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        centerTitle: (5 > 1),
      ),
      backgroundColor: Colors.purple[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'if your score is higher than 5, you are on the right way to handle the stress. Otherwise, follow the guidelines in the progress area.',

                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.purple[500],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(height: 60),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              color: Colors.purpleAccent,
              child: Text(
                'Back',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()));
              }),
        ],
      ),
    );
  }
}

class ProgressPWI extends StatefulWidget {
  @override
  _ProgressPWIState createState() => _ProgressPWIState();
}

class _ProgressPWIState extends State<ProgressPWI> {
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
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.purple[50],
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
                    value: 0.3,
                    backgroundColor: Colors.purple[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '30%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.deepPurpleAccent,
              child: Text('Stress score of\nthe last test',
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
                    value: 0.6,
                    backgroundColor: Colors.purple[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '60%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.purpleAccent,
              child: Text('Stress score of last week',
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