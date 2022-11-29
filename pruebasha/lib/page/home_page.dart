//librerias
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//rutas
import '../widget/logged_in_widget.dart';
import '../widget/sign_up_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hay un error ${snapshot.error}'));
            //Text('Hay un error ' + (snapshot.error).toString()));
          } else if (snapshot.hasData) {
            return LoggedInWidget(); //Sesion Iniciada
          } else {
            return SignUpWidget(); //Sesion sin inicio
          }
        },
      ));
}
