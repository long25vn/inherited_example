

import 'package:flutter/material.dart';
import 'package:first_app/counter.dart';
import 'package:first_app/drawer.dart';

class About extends StatefulWidget {
  About({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var counterWidget;
  void _incrementCounter() {
    setState(() {
      counterWidget.counter.tangso();
    });
  }
  @override
  Widget build(BuildContext context) {
    counterWidget = CounterWidget.of(context);
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hom qua Viet Nam thang, moi nguoi co di bao khong',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '${counterWidget.counter.count}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
