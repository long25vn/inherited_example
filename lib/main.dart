import 'package:flutter/material.dart';
import 'package:first_app/counter.dart';
import 'package:first_app/drawer.dart';
import 'package:first_app/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CounterWidget(
        counter: Counter(0),
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => MyHomePage(),
            '/about': (context) => About(),
            '/settings': (context) => MyHomePage(),
          },
        ),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text("Vi du"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
