import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora NRC2287',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Teclado(),
    );
  }
}

class Teclado extends StatelessWidget {
  const Teclado({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  scale: 8,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Proyecto Teclado NRC2287',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "digite un numero"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              TextField(
                decoration:
                    InputDecoration(labelText: "digite un numero de telefono"),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                decoration:
                    InputDecoration(labelText: "digite un numero decimal"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              )
            ],
          ),
        ));
  }
}
