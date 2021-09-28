// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/providers/contador.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(child: Consumer<Contador>(
                builder: (context, counter, child) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: counter.color,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${counter.count}",
                          style: TextStyle(fontSize: 70),
                        ),
                      ],
                    ),
                  );
                },
              )),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<Contador>().setColor("K");
                    },
                    child: Text(
                      "BLACK",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<Contador>().setColor("R");
                    },
                    child: Text(
                      "RED",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<Contador>().setColor("B");
                    },
                    child: Text(
                      "BLUE",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue)),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<Contador>().setColor("G");
                    },
                    child: Text(
                      "GREEN",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<Contador>().increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<Contador>().decrement();
                    },
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<Contador>().reset();
                    },
                    child: Icon(Icons.refresh),
                  ),
                ],
              ),
              SizedBox(height: 8),
            ],
          )),
    );
  }
}
