import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple GetX navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
            name: '/login',
            page: () => const Login(),
            transition: Transition.circularReveal,
            transitionDuration: const Duration(seconds: 5)),
        GetPage(
            name: '/signup',
            page: () => const SignIn(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/content',
            page: () => const Content(),
            transition: Transition.zoom),
      ],
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text("Inicio"),
            onPressed: () {
              Get.offNamed('/content');
            },
          ),
          TextButton(
            child: const Text("Create account"),
            onPressed: () {
              Get.toNamed('/signup');
            },
          )
        ],
      )),
    ));
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text("Create account"),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      )),
    ));
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text("Logout"),
            onPressed: () {
              Get.offNamed('/login');
            },
          ),
        ],
      )),
    ));
  }
}
