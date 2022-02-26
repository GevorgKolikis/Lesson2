import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num tiv1 = 0, tiv2 = 0, havasarum = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  gumarum() {
    setState(() {
      tiv1 = num.parse(t1.text);
      tiv2 = num.parse(t2.text);
      havasarum = tiv1 + tiv2;
    });
  }

  hanum() {
    setState(() {
      tiv1 = num.parse(t1.text);
      tiv2 = num.parse(t2.text);
      havasarum = tiv1 - tiv2;
    });
  }

  bajanum() {
    setState(() {
      tiv1 = num.parse(t1.text);
      tiv2 = num.parse(t2.text);
      havasarum = tiv1 / tiv2;
    });
  }

  bazmapatkum() {
    setState(() {
      tiv1 = num.parse(t1.text);
      tiv2 = num.parse(t2.text);
      havasarum = tiv1 * tiv2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$havasarum'),
                  TextField(
                    controller: t1,
                  ),
                  TextField(
                    controller: t2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          onPressed: gumarum,
                          child: Text('+'),
                        ),
                        RaisedButton(
                          onPressed: hanum,
                          child: Text('-'),
                        ),
                        RaisedButton(
                          onPressed: bazmapatkum,
                          child: Text('*'),
                        ),
                        RaisedButton(
                          onPressed: bajanum,
                          child: Text(':'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
