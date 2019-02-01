import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculator",
    home: Calc(),
  ));
}

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String _firstValue;
  String _secondValue;
  double _result;
  String _showText;
  String _lastOp;

  String _showResult;
  String _showOp;

  void getNumber(String value) {
    switch (value) {
      case "+":
        _lastOp = "+";
        _secondValue = null;
        if (_result != null) {
          _firstValue = _result.toString();
        }
        break;
      case "-":
        _lastOp = "-";
        _secondValue = null;
        if (_result != null) {
          _firstValue = _result.toString();
        }
        break;
      case "*":
        _lastOp = "*";
        _secondValue = null;
        if (_result != null) {
          _firstValue = _result.toString();
        }
        break;
      case "÷":
        _lastOp = "÷";
        _secondValue = null;
        if (_result != null) {
          _firstValue = _result.toString();
        }
        break;
      default:
        if (_lastOp != null) {
          if (_secondValue != null) {
            _secondValue += value;
            print(_secondValue);
          } else {
            _secondValue = value;
          }

          switch (_lastOp) {
            case "+":
              _result = double.parse(_firstValue) + double.parse(_secondValue);
              print(_result);
              break;
            case "-":
              _result = double.parse(_firstValue) - double.parse(_secondValue);
              print(_result);
              break;
            case "*":
              _result = double.parse(_firstValue) * double.parse(_secondValue);
              print(_result);
              break;
            case "÷":
              _result = double.parse(_firstValue) / double.parse(_secondValue);
              print(_result);
              break;
            default:
              break;
          }
        } else {
          if (_firstValue != null) {
            _firstValue += value;
            print(_firstValue);
          } else {
            _firstValue = value;
            print(_firstValue);
          }
        }
        break;
    }
    setState(() {
      if (_result != null) {
        if (_secondValue == null) {
          _showOp = _firstValue;
        } else if (_secondValue != null) {
          _showOp = _firstValue.toString() + _lastOp + _secondValue.toString();
        }

        _showResult = _result.toString();
      } else {
        _showOp = _firstValue;
        _showResult = _firstValue;
      }
    });
  }

  void clear() {
    _firstValue = null;
    _secondValue = null;
    _result = null;
    _showText = null;
    _lastOp = null;
    setState(() {
      _showOp = null;
      _showResult = null;
    });
  }

  void sum(){
    setState(() {
      if(_result != null){
        _showOp = _showResult;
        _showResult = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Color.fromARGB(109, 109, 109, 109),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, right: 10),
            width: 500.5,
            height: 130.2,
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.input),
              title: Text(
                _showOp == null ? "0.0" : _showOp,
                style: TextStyle(fontSize: 30.0),
                // textDirection: TextDirection.rtl,
              ),
              subtitle: Text(
                _showResult == null ? "0.0" : _showResult,
                style: TextStyle(fontSize: 18.9),
                // textDirection: TextDirection.rtl,
              ),
            ),
            // child:
          ),
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, top: 45, right: 45),
                              child: Text(
                                "7",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("7"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, top: 45, right: 45),
                              child: Text(
                                '8',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("8"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(bottom: 45.0, top: 45),
                              child: Text(
                                '9',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("9"),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, right: 45),
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("4"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, right: 45),
                              child: Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("5"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(bottom: 45.0),
                              child: Text(
                                '6',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("6"),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, right: 45),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("1"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(
                                  left: 30.0, bottom: 45.0, right: 45),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("2"),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(bottom: 45.0),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                              onPressed: () => getNumber("3"),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () => getNumber("."),
                              padding: EdgeInsets.only(right: 45.0, left: 30.0),
                              child: Text(
                                ".",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () => getNumber("0"),
                              padding: EdgeInsets.only(right: 45.0, left: 30.0),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () => sum(),
                              child: Text(
                                '=',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: FlatButton(
                              onPressed: () => clear(),
                              child: Text(
                                "DEL",
                                style: TextStyle(fontSize: 28.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: FlatButton(
                              onPressed: () => getNumber("÷"),
                              child: Text(
                                "÷",
                                style: TextStyle(fontSize: 55.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: FlatButton(
                              onPressed: () => getNumber("*"),
                              child: Text(
                                "*",
                                style: TextStyle(fontSize: 55.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: FlatButton(
                              onPressed: () => getNumber("-"),
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 55.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: FlatButton(
                              onPressed: () => getNumber("+"),
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 55.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
