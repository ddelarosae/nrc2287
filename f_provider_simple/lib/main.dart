import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:loggy/loggy.dart';
import 'ui/pages/home.dart';
import 'ui/providers/my_color.dart';

// In this example we will not be using our regular project structure to help
// with the understating of the state handler using Provider

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic Provider sample"),
        ),
        body: ChangeNotifierProvider(
          create: (context) => MyColor(),
          child: const SafeArea(child: HomePage()),
        ),
      )));
}
