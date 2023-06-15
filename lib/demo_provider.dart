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
          child: MultiProvider(
            providers: [
              Provider(create: (context) => "Hello"),
            ],
            builder: (context, child) {
              return Provider(
                  create: (context) => "Hello 123",
                  builder: (contextProvider2, child){
                    String valueProvider1 = Provider.of(context);
                    String valueProvider2 = Provider.of(contextProvider2);
                    return Column(
                      children: [
                        Text("$valueProvider1 \n $valueProvider2")
                      ],
                    );
                  },
              );
            },
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
    String string = Provider.of(context);
    return Container(
      child: Column(
        children: [
          Text("Parent get string: $string"),
          child
        ],
      ),
    );
  }
}

class ChildrenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String string = context.watch();
    return Container(
      child: Column(
        children: [
          Text("Children get number: $string"),
        ],
      ),
    );
  }
}