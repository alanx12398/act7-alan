import 'package:flutter/material.dart';

void main() => runApp(const AppRuleta());

class AppRuleta extends StatelessWidget {
  const AppRuleta({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Usuarios(),
    );
  }
}

class Usuarios extends StatelessWidget {
  const Usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ruleta decisiones el Alan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 54, 33, 243),
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        actions: const [
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 10), // Espacio entre los iconos
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 15), // Espacio al final
        ],
      ),
      body: const ListaTarjetas(),
    );
  }
}

class ListaTarjetas extends StatelessWidget {
  const ListaTarjetas({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos los datos para no repetir código innecesariamente
    final List<Map<String, String>> items = [
      {
        'titulo': 'pedro',
        'subtitulo': '',
        'img': 'https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/usuario1.jpg'
      },
      {
        'titulo': 'juan',
        'subtitulo': '',
        'img': 'https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/usuario2.jpg'
      },
      {
        'titulo': 'Luis',
        'subtitulo': '',
        'img': 'https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/usuario3.png'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.deepPurple, // Fondo morado atractivo
          elevation: 5, // Sombra para dar profundidad
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(items[index]['img']!),
            ),
            title: Text(
              items[index]['titulo']!,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              items[index]['subtitulo']!,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(
              Icons.favorite,
              color: Color.fromARGB(174, 45, 175, 115),
            ),
            onTap: () {
              // Acción al tocar la tarjeta
              print('Diste like a: ${items[index]['titulo']}');
            },
          ),
        );
      },
    );
  }
}