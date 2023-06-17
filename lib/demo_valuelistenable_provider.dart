import 'package:flutter/material.dart';
class Counter{
  ValueNotifier<int> count = ValueNotifier(0);
}

class DemoValueListenableWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Valuelistenable Provider"),
      ),
      body: Container(),
    );
  }
}