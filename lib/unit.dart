import 'package:flutter/material.dart';

class Unit extends StatefulWidget {
  @override
  _UnitState createState() => _UnitState();
}

class _UnitState extends State<Unit> {
  @override
  Widget build(BuildContext context) {
    String _result = "0";
    String _result2 = "0";
    String _textResult = "0";
    String TheText = "0";
    TextEditingController _price = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      String contentText = "Content of Dialog";
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Text("Unit Calculator"),
                            content: Container(
                              height: MediaQuery.of(context).size.height/2,
                              width: (MediaQuery.of(context).size.width)/5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20.0),
                                    child: Text(_result),
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('C',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = "0";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('.',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += ".";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('⌫',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result.substring(0 , _result.length -1);
                                              if (_result==""){
                                                setState((){
                                                  _result = "0";
                                                });
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('7',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "7";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('8',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "8";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('9',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "9";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('4',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "4";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('5',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "5";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('6',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "6";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('1',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "1";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('2',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "2";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('3',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "3";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('0',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "0";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('00',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result = _result += "00";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('=',
                                          style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            print(_result);
                                            _textResult = _result;
                                            setState(() {
                                              //Navigator.pop(context);

                                              TheText = _result;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context). size. width/2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                        ),
                        child: Text(_result),
                      ),
                    ),
                  ),
                ),
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      String contentText = "Content of Dialog";
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Text("Unit Calculator"),
                            content: Container(
                              height: MediaQuery.of(context).size.height/2,
                              width: (MediaQuery.of(context).size.width)/5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20.0),
                                    child: Text(_result2),
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('C',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = "0";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('.',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += ".";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('⌫',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2.substring(0 , _result2.length -1);
                                              if (_result2==""){
                                                setState((){
                                                  _result2 = "0";
                                                });
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('7',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "7";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('8',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "8";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('9',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "9";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('4',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "4";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('5',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "5";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('6',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "6";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('1',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "1";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('2',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "2";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('3',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "3";
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('0',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "0";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('00',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            setState(() {
                                              _result2 = _result2 += "00";
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                          elevation: 5.0,
                                          minWidth: 50.0,
                                          height: 50,
                                          color: Colors.grey[300],
                                          child: new Text('=',
                                              style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                                          onPressed: () {
                                            print(_result2);
                                            setState(() {
                                              _textResult = _result2;
                                              Navigator.pop(context);
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context). size. width/2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context). size. width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
                child: Text(_textResult)
              ),
            ),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                _result = TheText;
              });
              //print(_price.text);
            },
            child: Text("Calculate"),
          )
        ],
      ),
    );
  }
}


