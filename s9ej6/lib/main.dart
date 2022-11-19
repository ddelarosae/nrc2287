import 'package:flutter/material.dart';
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Conexion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StreamSubscription subscription;
  String connectionStatus = "--------------------------------";
  @override
  initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      print('el estado de la conexion es:$result');
    });
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de conexion'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: checkStatus, child: const Text('Verificar estado')),
            const SizedBox(
              height: 20,
            ),
            Text(connectionStatus),
          ],
        ),
      ),
    );
  }

  void checkStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      print("Su conexion es por datos");
      setState(() {
        connectionStatus = "Su conexion es por datos";
      });
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print("Su conexion es por wifi");
      setState(() {
        connectionStatus = "Su conexion es por wifi";
      });
    }
  }
}
