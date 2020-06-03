import 'package:flutter/material.dart';
import 'package:youtube_app/injection_continer.dart';
import 'package:youtube_app/ui/search/search_page.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Youtube Search ',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.red.shade600,
          accentColor: Colors.redAccent.shade400,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SearchPage());
  }
}
