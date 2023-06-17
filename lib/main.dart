import 'package:flutter/material.dart';
import 'package:flutter_provider_25042023/demo_listenable_provider.dart';
import 'package:flutter_provider_25042023/demo_provider.dart';
import 'package:flutter_provider_25042023/demo_valuelistenable_provider.dart';

import 'demo_proxy_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/demo_provider": (context) => DemoProvider(),
        "/demo_listenable_provider": (context) => DemoListenableProvider(),
        "/demo_value_listenable_widget": (context) => DemoValueListenableWidget(),
        "/demo_proxy_provider": (context) => DemoProxyproviderWidget(),
      },
      initialRoute: "/demo_proxy_provider",
    );
  }
}
