import 'package:flutter/material.dart';
import 'package:login_test/components/components.dart';
import 'package:login_test/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Text("App Test"),
      ),
      body: const AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("Iniciar Sesion",),
                    SizedBox(height: 30),
                  ],
                ),
              ),

              SizedBox(height: 50),
              Text("Bienvenido a tu App Test",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
