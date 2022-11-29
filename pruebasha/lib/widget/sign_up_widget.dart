//librerias
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//rutas
import '../provider/google_sign_in.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            FaIcon(
              FontAwesomeIcons.hippo,
              size: 120,
              color: Colors.yellow,
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hola\n Bienvenido',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Login para continuar',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Spacer(),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.email),
                label: Text('Sign Up con email')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                },
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text('Sign Up con Google')),
          ],
        ),
      );
}
