import 'package:atdd_calculator/numberButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final zeroThroughNineButtons = List.generate(10, (num) => NumberButton(num));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Tooltip(
            message: 'Output',
            child: Text('0'),
          ),
          ...zeroThroughNineButtons
        ],
      ),
    );
  }
}
