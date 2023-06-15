import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DemoProvider extends StatefulWidget {
  const DemoProvider({Key? key}) : super(key: key);

  @override
  State<DemoProvider> createState() => _DemoProviderState();
}

class _DemoProviderState extends State<DemoProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo provider"),
      ),
      body: Container(
        child: Center(
          child: Provider<String>(
            create: (context) => "Hello",
            child: ParentWidget(
                ChildrenWidget()
            ),
          )
        ),
      ),
    );
  }
}

class ParentWidget extends StatelessWidget {
  Widget child;

  ParentWidget(this.child);

  @override
  Widget build(BuildContext context) {
    String value = Provider.of(context);
    return Container(
      child: Column(
        children: [
          Text("Parent get value: $value"),
          child
        ],
      ),
    );
  }
}

class ChildrenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Children"),
        ],
      ),
    );
  }
}