import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CounterApp(),
  ));
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  Color c1 = Colors.yellow;
  Color c2 = Colors.red;
  Color c3 = Colors.white;

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            i++;
            setState(() {
              if (i % 2 == 0) {
                c3 = c1;
              } else {
                c3 = c2;
              }
            });
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: c3,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 5,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "$i",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade500,
    );
  }
}
