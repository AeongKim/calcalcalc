import 'package:flutter/material.dart';
import 'view/home.dart';
import 'view/sub_calc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home(),
        // '/add' : (context) => const Add(),
        '/sub': (context) => const SubCalc(),
        // '/mul' : (context) => const Mul(),
        // '/div' : (context) => const Div(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
