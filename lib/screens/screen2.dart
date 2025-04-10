import 'package:example/providers/counter_providier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Scrren2 extends StatelessWidget {
  const Scrren2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("screen toooo"),
        Consumer<CounterProvidier>(builder: (context, counterProvidr, child) {
          return Text(counterProvidr.counter.toString());
        },)
      ],
    ),),);
  }
}