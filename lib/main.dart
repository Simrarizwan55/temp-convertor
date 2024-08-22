import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_convertor/temp_provider.dart';
import 'my_home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => TempProvider(),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY FLUTTER APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
