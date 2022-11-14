import 'package:demo_app/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/providers/convertion_model.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ConvertionModel(),
        child: App(),
      ),
    );
