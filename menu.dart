import 'package:flutter/material.dart';
import 'package:flutter_empresa/biblioteca.dart';
import 'package:flutter_empresa/noticias.dart';
import 'package:flutter_empresa/soporte.dart';
import 'package:flutter_empresa/productos.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu1(),
    );
  }
}

class Menu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virágom Studios'),
        backgroundColor: const Color.fromARGB(255, 121, 2, 101),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
ListTile(
            leading: const Icon(Icons.games, color: Color.fromARGB(255, 121, 2, 101),),
            title: const Text('Nuestros productos'),
            subtitle: const Text('Juegos y servicios'),
            //Agregar otro ícono al final.
            trailing: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 121, 2, 101),),
            
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const Productos());
                Navigator.push(context, route);
            },

          ),
ListTile(
            leading: const Icon(Icons.storage, color: Color.fromARGB(255, 121, 2, 101),),
            title: const Text('Bibiloteca'),
            subtitle: const Text('articulos ya adquiridos'),
            //Agregar otro ícono al final.
            trailing: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 121, 2, 101),),
            
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const Biblioteca());
                Navigator.push(context, route);
            },

          ),
            ListTile(
            leading: const Icon(Icons.newspaper, color: Color.fromARGB(255, 121, 2, 101),),
            title: const Text('Noticias'),
            subtitle: const Text('proximamente y nuevos lanzamientos'),
            //Agregar otro ícono al final.
            trailing: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 121, 2, 101),),
            
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const Noticias());
                Navigator.push(context, route);
            },

          ),
          ListTile(
            leading: const Icon(Icons.verified_user, color: Color.fromARGB(255, 121, 2, 101),),
            title: const Text('Soporte'),
            subtitle: const Text('contacto y ayuda'),
            //Agregar otro ícono al final.
            trailing: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 121, 2, 101),),
            
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const Soporte());
                Navigator.push(context, route);
            },

          ),
          ],
        ),
      ),
      body: const Center(
        child: Text('¡Bienvenido! Aquí encontrarás todo tipo de informacion sobre videojuegos.', style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
