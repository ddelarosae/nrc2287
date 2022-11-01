import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World App'),
        ),
        body: const ColumnTest(),
      ),
    ),
  );
}

class ColumnTest extends StatelessWidget {
  const ColumnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("Fila1", style: TextStyle(fontSize: 20.0)),
          Container(
              color: Colors.blue, child: const Center(child: Text('Fila2'))),
          Container(
              color: Colors.red, child: const Center(child: Text('Fila3')))
        ],
      ),
    );
  }
}
