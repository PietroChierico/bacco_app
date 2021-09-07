import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'MainPage.dart';

double lar = 150.0;
double fontz = 25.0;

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nutrition',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      backgroundColor: Colors.green[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(

              image: NetworkImage('https://imagizer.imageshack.com/img924/3554/MoPOFa.png'),
              height: 230,
              width: 200,
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.greenAccent[700],
              color: Colors.greenAccent[700],
              child: Text(
                'Begin test',
                style: TextStyle(
                  color: Colors.green[50],
                  fontSize: 30.0,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Emotional()),
                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.all(30.0),
              focusColor: Colors.greenAccent[700],
              color: Colors.greenAccent[700],
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
                  MaterialPageRoute(builder: (context) => Premio()),
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
    'it is sudden',
    'it is for a\nspecific food',
    'it is above\nthe neck',
    'it is urgent',
    'it is linked to\nupsetting emotion',
    'it is absent\nminded eating',
    'you do not stop\neating when sated',
    'it feels guilty\nabout eating'
  ];
}

class Domands {
  var physical = [
    'It is gradual',
    'it is open to\ndifferent foods',
    'it is based in\nthe stomach',
    'it is patient',
    'it is a physical\nneed',
    'you are aware\nof your eating',
    'you stop \n when sated',
    'you realize eating\nis necessary'
  ];
}

class Risposte {
  var risultato = [
    ' Your hunger is physical!',
    'Your feelings might influence your hunger'
  ];
}

class Spiegazione {
  var spieg = [
    'This is when your stomach is empty and \nyour brain signals that it is hungry by initiating \nstomach growling, thoughts about food, and feelings of irritability, tiredness and poor concentration.\n When you are physically hungry, any food will satisfy you, and this is actually a good thing! \nFeeling your hunger cues is important and a great way to know if you are consuming adequate food or not.',
    'Emotional eating is the practice \nof consuming large quantities of food \n usually "comfort" or junk foods in response to feelings instead of hunger.\n Experts estimate that 75% of overeating is caused by emotions.',
  ];
}

var i = 0;
var questions = Question();
var count = 0;
var emotional = Domands();
var f = 0;
var j = 0;
var risposte = Risposte();
var k = 0;
var spiegazione = Spiegazione();

class Emotional extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Emotional> {
  void domande() {
    setState(() {
      if (i < 7 && j < 7) {
        i++;
        j++;
      } else {
        punteggio();

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Nutrition_2()));
      }
    });
  }

  void punteggio() {
    if (f > count) {
      k = 0;
    } else {
      k = 1;
    }
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
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
        title: Text(
          '8 traits of Emotional Hunger',
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 1.5,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30.0),
          ),
          Center(
            child: Container(
              color: Colors.greenAccent[700],
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                'How is your hunger?',
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/Rdffc1fc66b668b00bc46a7a17c331607?rik=qW6I3lL%2fUmboSA&pid=ImgRaw'),
            height: 230,
          ),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.greenAccent[700],
                    child: Text(
                      questions.quesiti[i],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      domande();

                      setState(() {
                        count = count + 1;
                      });
                    }),
                FlatButton(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.greenAccent[700],
                    child: Text(
                      emotional.physical[j],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      domande();

                      setState(() {
                        f = f + 1;
                      });
                    }),
              ],
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

class Nutrition_2 extends StatefulWidget {
  @override
  _Nutrition_2State createState() => _Nutrition_2State();
}

void azzera() {
  f = 0;
  count = 0;
  i = 0;
  j = 0;
}

class Iconi {
  var icone = [
    Icons.sentiment_very_satisfied,
    Icons.sentiment_very_dissatisfied
  ];
}

class Colori {
  var colori = [Colors.green, Colors.orange[400]];
}

var lino = Iconi();
var stella = Colori();

class _Nutrition_2State extends State<Nutrition_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text(
          '8 Traits of Emotional Hunger',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: (5 > 1),
      ),
      backgroundColor: Colors.green[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Text(
                risposte.risultato[k],
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.greenAccent[700],
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          Icon(lino.icone[k], size: 100, color: stella.colori[k]),
          SizedBox(height: 60),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              color: Colors.greenAccent[700],
              child: Text(
                '      Back      ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                azzera();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthRoute()));
              }),
          SizedBox(height: 30),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              color: Colors.greenAccent[700],
              child: Text(
                'Know more about',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => knowmRoute()));
              })
        ],
      ),
    );
  }
}

class Premio extends StatefulWidget {
  @override
  _PremioState createState() => _PremioState();
}

class _PremioState extends State<Premio> with TickerProviderStateMixin {
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
          'Progress',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      backgroundColor: Colors.green[50],
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
                    value: 0.8,
                    backgroundColor: Colors.green[100],
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.lightGreenAccent[400]),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '80%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent[400]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.lightGreenAccent[400],
              child: Text('Total nutrition\nscore',
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
                    backgroundColor: Colors.green[100],
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  '40%',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.greenAccent,
              child: Text('Balance of your\nlast meal',
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

class knowmRoute extends StatefulWidget {
  @override
  _knowmRouteState createState() => _knowmRouteState();
}

class _knowmRouteState extends State<knowmRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text(
          '8 Traits of Emotional Hunger',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: (5 > 1),
      ),
      backgroundColor: Colors.green[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Text(
                spiegazione.spieg[k],
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.greenAccent[700],
                ),
              ),
            ),
          ),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              color: Colors.greenAccent[700],
              child: Text(
                'Back',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                azzera();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthRoute()));
              }),
        ],
      ),
    );
  }
}

