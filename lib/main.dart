import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    return const Placeholder();
  }
}
