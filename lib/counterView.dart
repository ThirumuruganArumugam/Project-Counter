import 'package:flutter/material.dart';

import 'counterVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx/src/observer.dart';



// ignore: must_be_immutable
class Counter extends StatelessWidget {
  Counter({super.key});

  final CounterVM _counterVM = CounterVM();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Action"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) {
                // Create a text widget and consume counter from model to show the text.
                return Text(_counterVM.counter.toString());
              },
              ),
              ElevatedButton(onPressed: _counterVM.updateCounter, child: Text("Count Increase")),
              ElevatedButton(onPressed: _counterVM.deCounter, child: Text("Count Decrease"))
          ],
        ),
      ) ,
      

        backgroundColor: Colors.white,
        );
  }
} 