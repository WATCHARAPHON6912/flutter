import 'package:flutter/material.dart';

void main() {
  runApp(home());
}
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: button(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class button extends StatefulWidget {
  const button({Key? key}) : super(key: key);

  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("ENTER +", style: TextStyle(fontSize: 30, color: Colors.black)),
          Text(
            "$number",
            style: TextStyle(fontSize: 60, color: Colors.black),
          ),
        ])),
        floatingActionButton: FloatingActionButton(
          onPressed: addnumber,
          //child: Text("+"),
          child: Icon(Icons.add),
        ));
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
