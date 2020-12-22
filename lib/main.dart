import 'package:calculator/unit.dart';
import 'package:calculator/voice.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'percentage.dart';
import 'discount.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
Color text;
String equation = '0';
String expression = '';
bool isSwitched = false;
stt.SpeechToText _speech;
bool _isListening = false;
String _text = 'Press the button and start speaking';
String _reply = 'reply';

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equation = '0';
      }
      else if (buttonText == '⌫') {
        equation = equation.substring(0, equation.length - 1);
        if (equation == '') {
          equation = '0';
        }
      }
      else if (buttonText == '=') {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll('√', 'sqrt');
        expression = expression.replaceAll('X', '*');

        try {
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          equation = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }
        catch (e) {
          equation = 'Error';
        }
      }
      else {
        if (equation == '0') {
          equation = buttonText;
        }
        else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(String buttonText, Color buttonColor, double _flex,
      int _flexit, Color textColor) {
    setState(() {
      text = textColor;
    });

    return Expanded(
      flex: _flexit,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: RawMaterialButton(
          padding: EdgeInsets.all(_flex),
          shape: CircleBorder(),
          fillColor: buttonColor,
          elevation: 5,
          onPressed: () => buttonPressed(buttonText),
          child: Text(buttonText, style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 25, color: textColor, fontWeight: FontWeight.w400)
          ),),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    _scrollToBottom() {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.orangeAccent),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: IconButton(
              icon: Icon(
                _isListening ? Icons.mic : Icons.mic_none,
                color: Colors.orange,
                size: 35,
              ),
              onPressed: () {
                _listen();
              },
            ),
          )
        ],
      ),
      drawer:
      Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Percent()),
                );
              },
              title: Text('Percent Calculator'),
              leading: CircleAvatar(
                  child: Image.asset('assets/percentage.png')),
            ),
            Divider(
                thickness: 1, color: Colors.orangeAccent, height: 1
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Discount()),
                );
              },
              title: Text('Discount Calculator'),
              leading: CircleAvatar(child: Image.asset('assets/discount.png')),
            ),
            Divider(
                thickness: 1, color: Colors.orangeAccent, height: 1
            ),
            // ListTile(
            //   onTap: (){
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => Unit()),
            //     );
            //   },
            //   title: Text('Unit Calculator'),
            //   leading: CircleAvatar(child: Image.asset('assets/tag.png')),
            // ),
            // Divider(
            //     thickness: 1,color: Colors.orangeAccent,height: 1
            // ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                child: ListView(
                  controller: _scrollController,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Align(alignment: Alignment.centerRight,
                            child: Text(equation, style: GoogleFonts.montserrat(
                              textStyle: TextStyle(fontSize: 70,
                                  color: Colors.orangeAccent),),)),
                      ),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: AutoSizeText(
              //       '$equation',
              //       style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.orangeAccent ),),
              //       maxLines: 1,
              //       overflowReplacement: Text('Reached Over Max Characters',style: GoogleFonts.montserrat(color: Colors.red,textStyle: TextStyle(fontSize: 30))),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 30),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(onPressed: () {
                      setState(() {
                        if (equation == '0') {
                          equation = '√';
                        }
                        else {
                          equation = equation + '√';
                        }
                      });
                    },
                      child: Text('√', style: TextStyle(
                          fontSize: 45, color: Colors.orangeAccent),),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(onPressed: () {
                        setState(() {
                          if (equation == '0') {
                            equation = '^';
                          }
                          else {
                            equation = equation + '^';
                          }
                        });
                      },
                        child: Text('^', style: TextStyle(
                            fontSize: 45, color: Colors.orangeAccent),),),
                    ),
                  ),
                  SizedBox(width: 124,),
                  GestureDetector(
                    onLongPress: () {
                      setState(() {
                        equation = "0";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                          alignment: Alignment.centerRight, child: IconButton(
                        onPressed: () {
                          setState(() {
                            equation =
                                equation.substring(0, equation.length - 1);
                            if (equation == '') {
                              equation = '0';
                            }
                          });
                        },
                        icon: Icon(
                          Icons.backspace, color: Colors.orangeAccent,),
                        iconSize: 30,)),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton('C', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('(', Colors.white, 18, 1, Colors.orangeAccent),
                  buildButton(')', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('÷', Colors.white, 20, 1, Colors.orangeAccent),


                ],

              ),
              Row(
                children: <Widget>[
                  buildButton('7', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('8', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('9', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('×', Colors.white, 20, 1, Colors.orangeAccent),


                ],

              ),
              Row(
                children: <Widget>[
                  buildButton('4', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('5', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('6', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('+', Colors.white, 20, 1, Colors.orangeAccent),


                ],

              ),
              Row(
                children: <Widget>[
                  buildButton('1', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('2', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('3', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('-', Colors.white, 20, 1, Colors.orangeAccent),


                ],

              ),

              Row(
                children: <Widget>[
                  buildButton('0', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('00', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('.', Colors.white, 20, 1, Colors.orangeAccent),
                  buildButton('=', Colors.orangeAccent, 20, 1, Colors.white),
                ],

              ),


            ]
        ),
      ),

    );
  }


  void _listen() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return VoicePay();
      },
    );
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) =>
              setState(() {
                _text = val.recognizedWords;
                if (val.hasConfidenceRating && val.confidence > 0) {
                  setState(() => _isListening = false);
                  _speech.stop();
                  Navigator.pop(context);
                  print(_text);
                  setState(() {
                    if(_text.toLowerCase().contains('divided')){
                      print("true");
                      _text = _text.replaceAll('divided by' , '');
                      _text = _text.replaceAll('  ' , '÷');
                      equation = _text;
                      print(_text);
                    }
                    if(_text.toLowerCase().contains('divide')){
                      _text = _text.replaceAll('divide' , '');
                      _text = _text.replaceAll('  ' , '÷');
                      equation = _text;
                      print(_text);
                    }
                    if(_text.toLowerCase().contains('subtract')){
                      _text = _text.replaceAll("subtract", "-");
                    }
                    if(_text.toLowerCase().contains('x')){
                      _text = _text.replaceAll("x", "×");
                    }
                    equation = _text;
                    print(equation);
                  });
                }
              }),
        );
      }
    }
  }

}









































