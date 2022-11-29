import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../provider/google_sign_in.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user =
        FirebaseAuth.instance.currentUser!; //usuario actualmente conectado
    return Scaffold(
      appBar: AppBar(
        title: Text('Sesion iniciada'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Text('Logout'))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Perfil',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 32,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Nombre: ' + user.displayName!),
            //Text('Nombre: ${user.displayName!}')
            SizedBox(
              height: 8,
            ),
            Text('Email: ${user.email!}')
          ],
        ),
      ),
    );
  }
}
