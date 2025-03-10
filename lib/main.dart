import 'package:flutter/material.dart';
import 'package:flutterProvider/providers/CounterModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Countermodel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Example app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CounterProviderWidget(),
    );
  }
}

class CounterProviderWidget extends StatefulWidget {
  const CounterProviderWidget({super.key});

  @override
  State<CounterProviderWidget> createState() => _CounterProviderWidgetState();
}

class _CounterProviderWidgetState extends State<CounterProviderWidget> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Countermodel>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Counter Provider Example')),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is provider test ${counter.values}",
                style: TextStyle(fontSize: 24.0),
              ),
              ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                child: Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
