import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Kevin"),
            accountEmail: const Text("kevin@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295430_1280.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/utils/fondo_sidebar.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text("Iniciar sesion"),
            onTap: () {
              print("Presionado iniciar sesion");
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Cerrar sesion"),
            onTap: () {
              print("Presionado cerrar sesion");
            },
          )
        ],
      ),
    );
  }
}
