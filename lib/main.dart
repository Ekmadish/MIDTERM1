import 'package:calculator/calcFuntions.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            toolbarHeight: 35,
            title: Text("Calculator(23958)"),
            centerTitle: true,
          ),
          body: Calculator(),
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({
    Key key,
  }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.black.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.only(top: 35),
                  child: Text(displayInputs == null ? "" : "$displayInputs",
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                      )),
                )),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    result == null ? "" : "$result",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(1),
          color: Colors.black87.withOpacity(0.7),
          child: Row(
            children: <Widget>[
              CalculatorButton(
                text: "C",
                textColor: Colors.white,
                press: () {
                  setState(
                    () {
                      calculation("C");
                    },
                  );
                },
              ),
              CalculatorButton(
                text: "+/-",
                textColor: Colors.white,
                press: () {},
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "%",
                press: () {
                  setState(() {
                    calculation("%");
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Color.fromRGBO(255, 158, 9, 1),
                textColor: Colors.white,
                text: "/",
                press: () {
                  setState(
                    () {
                      calculation("/");
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(1),
          color: Colors.black.withOpacity(0.6),
          child: Row(
            children: <Widget>[
              CalculatorButton(
                text: "7",
                textColor: Colors.white,
                press: () {
                  setState(
                    () {
                      calculation("7");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "8",
                press: () {
                  setState(
                    () {
                      calculation("8");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "9",
                press: () {
                  setState(
                    () {
                      calculation("9");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "x",
                backgroundColor: Color.fromRGBO(255, 158, 9, 1),
                press: () {
                  setState(
                    () {
                      calculation("x");
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(1),
          color: Colors.black.withOpacity(0.6),
          child: Row(
            children: <Widget>[
              CalculatorButton(
                textColor: Colors.white,
                text: "4",
                press: () {
                  setState(
                    () {
                      calculation("4");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "5",
                press: () {
                  setState(
                    () {
                      calculation("5");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "6",
                press: () {
                  setState(
                    () {
                      calculation("6");
                    },
                  );
                },
              ),
              CalculatorButton(
                backgroundColor: Color.fromRGBO(255, 158, 9, 1),
                textColor: Colors.white,
                text: "-",
                press: () {
                  setState(
                    () {
                      calculation("-");
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(1),
          color: Colors.black.withOpacity(0.6),
          child: Row(
            children: <Widget>[
              CalculatorButton(
                textColor: Colors.white,
                text: "1",
                press: () {
                  setState(
                    () {
                      calculation("1");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "2",
                press: () {
                  setState(
                    () {
                      calculation("2");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "3",
                press: () {
                  setState(
                    () {
                      calculation("3");
                    },
                  );
                },
              ),
              CalculatorButton(
                backgroundColor: Color.fromRGBO(255, 158, 9, 1),
                textColor: Colors.white,
                text: "+",
                press: () {
                  setState(
                    () {
                      calculation("+");
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(1),
          color: Colors.black.withOpacity(0.6),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: "0",
                press: () {
                  setState(
                    () {
                      calculation("0");
                    },
                  );
                },
              ),
              CalculatorButton(
                textColor: Colors.white,
                text: ".",
                press: () {
                  setState(
                    () {
                      calculation(".");
                    },
                  );
                },
              ),
              CalculatorButton(
                text: "=",
                backgroundColor: Color.fromRGBO(255, 158, 9, 1),
                textColor: Colors.white,
                press: () {
                  setState(
                    () {
                      calculation("=");
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
