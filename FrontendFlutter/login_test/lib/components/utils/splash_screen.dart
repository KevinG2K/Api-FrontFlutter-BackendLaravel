import 'package:flutter/material.dart';
import 'package:login_test/screens/login/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //FUNCIONES
  void initState() { // Se ejecuta cuando se inicia la aplicacion
    var duracion = const Duration(seconds: 2);
    // cuando se ejecuta el evento Duration
    Future.delayed(duracion, () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center( //centramos la imagen
        child: Image(image: AssetImage('assets/utils/splash.png'),
            fit: BoxFit.cover,
        ),
      ),
    );
  }
}