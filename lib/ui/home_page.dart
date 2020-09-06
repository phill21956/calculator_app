import 'package:flutter/material.dart';
import '../operations/operations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController inputController = new TextEditingController();
  TextEditingController answerController = new TextEditingController();
  double value1;
  double value2;
  String sign;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: AbsorbPointer(
                absorbing: true,
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                  controller: inputController,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: AbsorbPointer(
                absorbing: true,
                child: TextField(
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  controller: answerController,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Colors.grey[700],
                                    style: BorderStyle.solid)),
                            child: Text(
                              'C',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.red),
                            ),
                            onPressed: () {
                              inputController.text = '';
                              answerController.text = '';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(''),
                            onPressed: () {}),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(''),
                            onPressed: () {}),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Image.asset(
                              'assets/divide.jpg',
                              height: 40,
                              width: 30,
                            ),
                            onPressed: () {
                              if (inputController.text.isEmpty &&
                                  value1 == null) {
                                return;
                              } else {
                                if (value1 == null) {
                                  value1 = double.parse(inputController.text);
                                  sign = '/';
                                  inputController.text = '';
                                } else {
                                  if (inputController.text.isEmpty) {
                                    sign = '/';
                                  }
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '9',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '9';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '8',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '8';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '7',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '7';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Image.asset(
                              'assets/multiply.jpg',
                              height: 40,
                              width: 30,
                            ),
                            onPressed: () {
                              if (inputController.text.isEmpty &&
                                  value1 == null) {
                                return;
                              } else {
                                if (value1 == null) {
                                  value1 = double.parse(inputController.text);
                                  sign = '*';
                                  inputController.text = '';
                                } else {
                                  if (inputController.text.isEmpty) {
                                    sign = '*';
                                  }
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '6',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '6';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '5';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '4';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Image.asset(
                              'assets/minus.jpg',
                              height: 40,
                              width: 30,
                            ),
                            onPressed: () {
                              if (inputController.text.isEmpty &&
                                  value1 == null) {
                                return;
                              } else {
                                if (value1 == null) {
                                  value1 = double.parse(inputController.text);
                                  sign = '-';
                                  inputController.text = '';
                                } else {
                                  if (inputController.text.isEmpty) {
                                    sign = '-';
                                  }
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '3';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '2';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '1';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Image.asset(
                              'assets/plus.jpg',
                              height: 40,
                              width: 30,
                            ),
                            onPressed: () {
                              if (inputController.text.isEmpty &&
                                  value1 == null) {
                                return;
                              } else {
                                if (value1 == null) {
                                  value1 = double.parse(inputController.text);
                                  sign = '+';
                                  inputController.text = '';
                                } else {
                                  if (inputController.text.isEmpty) {
                                    sign = '+';
                                  }
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              'del',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.red),
                            ),
                            onPressed: () {
                              inputController.text =
                                  inputController.text.substring(
                                0,
                                inputController.text.length - 1,
                              );
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {
                              inputController.text = inputController.text + '0';
                            }),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.grey[700],
                                )),
                            child: Text(
                              '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            onPressed: () {}),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                color: Colors.grey[700],
                              )),
                          child: Image.asset(
                            'assets/equal.jpg',
                            height: 40,
                            width: 30,
                          ),
                          onPressed: () {
                            if (value1 != null &&
                                inputController.text.isNotEmpty) {
                              value2 = double.parse(inputController.text);
                              inputController.text = '';
                              if (sign == '+') {
                                answerController.text =
                                    CalOperations.add(value1, value2)
                                        .toString();
                              } else if (sign == '-') {
                                answerController.text =
                                    CalOperations.minus(value1, value2)
                                        .toString();
                              } else if (sign == '*') {
                                answerController.text =
                                    CalOperations.multiply(value1, value2)
                                        .toString();
                              } else if (sign == '/') {
                                answerController.text =
                                    CalOperations.divide(value1, value2)
                                        .toString();
                              }
                              value1 = null;
                              value2 = null;
                              sign = null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
