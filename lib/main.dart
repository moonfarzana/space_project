import 'package:flutter/material.dart';
import 'package:flutter_space_projects/pages/core/notifier.dart';
import 'package:flutter_space_projects/pages/home_page.dart';
import 'package:flutter_space_projects/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier, 
      builder: (context,isDark,child){
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),
      home: const WidgetTree(),
    );
    },
    );
  }
}
