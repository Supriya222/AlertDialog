import 'package:flutter/material.dart';
import './view/alert_dialog_app.dart';
import 'provider/show_dialog_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShowDialogProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AlertDialogApp(),
        theme:
            ThemeData(accentColor: Colors.amber, primarySwatch: Colors.purple));
  }
}
