import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math';

class Counter {
  var number;

  Counter({required this.number});
}

class CounterManager {
  Counter? counter;

  void updateCounter({required Counter counter}) {
    this.counter = counter;
  }

  void increase({int step = 1}) {
    counter?.number += step;
  }

  void decrease({int step = 1}) {
    counter?.number -= step;
  }

  void reset() {
    counter?.number = 0;
  }
}

class ModelRepository {
  CounterManager? counterManager;

  void updateCounterManager({required CounterManager counterManager}) {
    this.counterManager = counterManager;
  }

  int getRandom() => Random().nextInt(100);

  void calculateIncrease() {
    var number = getRandom();
    if (number % 2 == 0) {
      counterManager?.increase(step: number);
    }
  }

  void calculateDecrease() {
    var number = getRandom();
    if (number % 2 == 0) {
      counterManager?.decrease(step: number);
    }
  }

  void calculateReset() {
    counterManager?.reset();
  }
}

class DemoProxyproviderWidget extends StatefulWidget {
  const DemoProxyproviderWidget({Key? key}) : super(key: key);

  @override
  State<DemoProxyproviderWidget> createState() => _DemoProxyproviderWidgetState();
}

class _DemoProxyproviderWidgetState extends State<DemoProxyproviderWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

