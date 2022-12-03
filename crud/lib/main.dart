import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user.dart';
import '../page/user_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'firebase update and delete',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(40),
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      home: const Myapphome(),
    );
  }
}

class Myapphome extends StatefulWidget {
  const Myapphome({super.key});

  @override
  //State<Myapphome> createState() => _MyapphomeState();
  _MyapphomeState createState() => _MyapphomeState();
}

class _MyapphomeState extends State<Myapphome> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Usuarios'),
          //ElevateButtonIcon: const Icon(Icons.delete)
        ),
        body: Container(
          padding: const EdgeInsets.all(32),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc('my-id');
                    docUser.update({
                      'name': 'Henry',
                    });
                    docUser.update({
                      'city.name': 'Bogota',
                    });
                  },
                  child: const Text('Update')),
              const SizedBox(height: 32),
              ElevatedButton(
                  onPressed: () {
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc('my-id');
                    docUser.delete();
                  },
                  child: const Text('Delete'))
            ],
          ),
        ),
      );
}
