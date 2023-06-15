import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Count extends ChangeNotifier {
  int value = 0;

  void inCreaseValue() {
    value += 1;
    notifyListeners();
  }
}

class DemoListenableProvider extends StatefulWidget {
  const DemoListenableProvider({Key? key}) : super(key: key);

  @override
  State<DemoListenableProvider> createState() => _DemoListenableProviderState();
}

class _DemoListenableProviderState extends State<DemoListenableProvider> {
  @override
  Widget build(BuildContext context) {
    print("Parent build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo provider"),
      ),
      body: Center(
        child: Container(
          child: ListenableProvider<Count>(
            dispose: (context, count) {
              print("Dispose");
              count.dispose();
            },
            create: (context) => Count(),
            child: CountWidget(),
          ),
        ),
      ),
    );
  }
}

class CountWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Count count = Provider.of(context);
    return Container(
      child: Column(
        children: [
          Text("Count : ${count.value}"),
          ElevatedButton(onPressed: () {
              count.inCreaseValue();
          }, child: Text("Increase"))
        ],
      ),
    );
  }
}
