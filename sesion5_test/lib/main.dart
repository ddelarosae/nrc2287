import 'package:flutter/material.dart';

void main() {
  try {
    throw ('todo bien');
  } catch (error) {
    //debugPrint(error.toString());
    FlutterError.reportError(
      FlutterErrorDetails(
        exception: error,
        library: 'Error importante',
        context: ErrorSummary('Revisar este error'),
      ),
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
