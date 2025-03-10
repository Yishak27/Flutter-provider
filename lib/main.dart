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
    return Scaffold(
      appBar: AppBar(title: Text('Counter Provider Example')),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("this is provider test"),
              ElevatedButton(
                onPressed: () {
                  AlertDialog(
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Cancel")),
                    ],
                    title: Text('Increment Counter'),
                    content: Text(
                      'Are you sure you want to increment the counter?',
                    ),
                  );
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
