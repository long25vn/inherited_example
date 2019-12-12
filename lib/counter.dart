


import 'package:flutter/widgets.dart';

class CounterWidget extends InheritedWidget {
  final Widget child;
  final Counter counter;

  CounterWidget({Key key, this.child, this.counter, this.data}) : super(key: key, child: child);

  static CounterWidget of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CounterWidget) as CounterWidget) ;
  }

  final data;

  @override
  bool updateShouldNotify(CounterWidget oldWidget) {
    return true;
  }
}


class Counter {
  int count;
  List<String> danhsachsanpham;
  Counter(this.count);
  tangso() {
    count++;
  }
}