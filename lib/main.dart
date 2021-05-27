import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  void changeface(){
    setState(() {
      ballNumber = Random().nextInt(5) +1;
      print('I got clicked');
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(child: Text(' MAGIC BALL')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    changeface();
                  },
                  child: Image.asset('images/ball$ballNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
