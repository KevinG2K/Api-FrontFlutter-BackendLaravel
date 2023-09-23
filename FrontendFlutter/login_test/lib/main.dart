import 'package:flutter/material.dart';
import 'package:login_test/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Frontend',
      initialRoute: 'login',
      routes: {
        '/': ( _ ) => const HomeScreen(),
        'login': ( _ ) => const LoginScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(239, 245, 245, 245),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.green
        )
      ),
    );
  }
}