import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase',
      home: AppData(),
    );
  }
}

class AppData extends StatelessWidget {
  const AppData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('App Read NRC2287'),
      ),
      body: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add_box_outlined),
          onPressed: () {
            FirebaseFirestore.instance
                .collection('frutas')
                .add({'color': 'rojo'});
          },
        ),
      ),
    );
  }
}
