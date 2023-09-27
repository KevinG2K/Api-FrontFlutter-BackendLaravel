import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //ocupa el ancho total de la pantalla
      height: double.infinity, //ocupa el alto total de la pantalla
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ), //Margen superior del icon
          Center(
            child: SizedBox(
              width: 200,
              child: Image(
                image: AssetImage('assets/utils/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //trae la medida general de la pantalla
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.40,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(top: 110, left: 30, child: _Burble()),
          Positioned(top: 110, right: 30, child: _Burble()),
          Positioned(top: 270, left: 10, child: _Burble()),
          Positioned(top: 270, right: 10, child: _Burble()),
          Positioned(top: -40, left: 0, child: _Burble()),
          Positioned(top: -40, right: 0, child: _Burble()),
          Positioned(top: 200, left: 150, child: _Burble()),
        ],
      ),
    );
  }

  //estructura de una caja de decoracion
  BoxDecoration _purpleBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue,
        Colors.green,
      ]));
}

class _Burble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.5)
      ),
    );
  }
}