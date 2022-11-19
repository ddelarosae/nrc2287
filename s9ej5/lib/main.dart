//PETICICION HTTP POST

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'dart:convert';
import 'dart:async';

Future<Album> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{'title': title}),
  );
  if (response.statusCode == 201) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Falla al subir el album');
  }
}

class Album {
  final int id;
  final String title;

  const Album({
    required this.id,
    required this.title,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(id: json["id"], title: json["title"]);
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<Album>? _futureAlbum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peticion GET HTTP',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peticion POST HTTP'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Inserte un titulo'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(_controller.text);
            });
          },
          child: const Text('Enviar dato'),
        ),
      ],
    );
  }

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
