import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1, num2, sum=0;
  final TextEditingController t1v


  void doAddition() {
    this.setState(() {
      sum = num1 + num2;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Output: ",
                  style: new TextStyle(
                    fontSize: 40.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Padding(padding: EdgeInsets.only(bottom: 20)),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 1"),
                ),
                new TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter number 2")),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  new MaterialButton(
                    child: Text('+'),
                    onPressed: doAddition,
                    color: Colors.redAccent,
                  ),
                  new Padding(padding: const EdgeInsets.only(right: 20)),
                  new MaterialButton(
                    child: Text('-'),
                    onPressed: () => {},
                    color: Colors.redAccent,
                  ),
                ]),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new MaterialButton(
                      child: Text('*'),
                      onPressed: () => {},
                      color: Colors.redAccent,
                    ),
                    new Padding(padding: const EdgeInsets.only(right: 20)),
                    new MaterialButton(
                      child: Text('/'),
                      onPressed: () => {},
                      color: Colors.redAccent,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
