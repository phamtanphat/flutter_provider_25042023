import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      body: Provider(
        create: (context) => Counter(),
        child: Consumer<Counter>(
          builder: (context, counter, child) {
            return Text(counter.count.value.toString());
          },
        )
      ),
    );
  }
}