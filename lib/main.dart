import 'package:flutter/material.dart';
import 'package:prueba_poo/widget/contenedor_de_titulo.dart';
import 'package:prueba_poo/Imagen_usuario.dart';

void main() {
  runApp(const MyApp(title: 'INSTAGRAM'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});
  static const List<Map<String, dynamic>> posts = [
    {
      'usuario': 'diegofav154',
      'avatar': 'https://i.imgur.com/rZidjbZ.jpg',
      'imagen': 'https://i.imgur.com/rZidjbZ.jpg',
      'tiempo': '10 h',
      'likes': '67,7 mil',
      'comentarios': '6767',
      'descripcion': 'Holap, soy yo :P',
    },
    {
      'usuario': 'mvytteee',
      'avatar': '',
      'imagen': 'https://i.imgur.com/tCbGyYG.jpg',
      'tiempo': '6 h',
      'likes': '2.486',
      'comentarios': '15',
      'descripcion': 'Asi es mi vida como estudiante americana viendo a badboni',
      'lugar': 'L.A California',
      'meGusta': true,
    },
    {
      'usuario': 's4ra_perez',
      'avatar': '',
      'imagen': 'https://i.imgur.com/rnha2ig.jpg',
      'tiempo': '9 h',
      'likes': '4.2 mil',
      'comentarios': '',
      'descripcion': 'Aquí en la neverita.. ​',
      'lugar': 'Bogotá, Cundinamarca',
    },
    {
      'usuario': 'charlie.carrillo9',
      'avatar': '',
      'imagen': 'https://i.imgur.com/DnLpyxI.jpg',
      'tiempo': '8 h',
      'likes': '35.7 mil',
      'comentarios': '424',
      'descripcion': "Harry kane balón de oro",
      'meGusta': true,
    },
    {
      'usuario': 'andresitoow',
      'avatar': '',
      'imagen': 'https://i.imgur.com/fXFaeAv.jpg',
      'tiempo': '10 h',
      'likes': '48,9 mil',
      'comentarios': '2.104',
      'descripcion': 'Shot o me lo culeo con los de la uptc',
      'lugar': 'Tunja, Boyacá',
      'verificado': true,
    },
    {
      'usuario': 'camacho_jms',
      'avatar': '',
      'imagen': 'https://i.imgur.com/OWw2uf6.jpg',
      'tiempo': '23 h',
      'likes': '15',
      'comentarios': '2',
      'descripcion': 'Aqui tocando mi aburrido clarinete',
      'verificado': false,
    },
    {
      'usuario': 'mars.ueu',
      'avatar': '',
      'imagen': 'https://i.imgur.com/FpStti2.jpg',
      'tiempo': '16 h',
      'likes': '3.456',
      'comentarios': '78',
      'descripcion': 'yo no se, aparecí en un video de andresitoow',
      'meGusta': true,
    },
    {
      'usuario': 'keverferrer',
      'avatar': '',
      'imagen': 'https://i.imgur.com/fXVycRR.jpg',
      'tiempo': '2 h',
      'likes': '555',
      'comentarios': '23',
      'descripcion': 'Solo chivas, +3',
      'lugar': 'Movistar Arena, Bogotá',
    },
    {
      'usuario': 'noxx.diego',
      'avatar': '',
      'imagen': 'https://i.imgur.com/Y7dorcT.jpg',
      'tiempo': '21 h',
      'likes': '260',
      'comentarios': '17',
      'descripcion': 'Parchate',
    },
    {
      'usuario': 'chef.mariov',
      'avatar': '',
      'imagen': 'https://i.imgur.com/iAailiw.jpg',
      'tiempo': '3 d',
      'likes': '2.215',
      'comentarios': '69',
      'descripcion': 'Vengan a Terranova, nuestro nuevo restaurante a las afueras de Tauramena',
      'meGusta': true,
    },
    {
      'usuario': 'rubikyt',
      'avatar': '',
      'imagen': 'https://i.imgur.com/p9gnocr.jpg',
      'tiempo': '7 d',
      'likes': '21,7 mil',
      'comentarios': '1.320',
      'descripcion': 'Dedsafio 4 con el Team Mafia Capítulo Final',
      'lugar': 'Guadalajara',
      'verificado': true,
    },
    {
      'usuario': 'xoxoxo_sofia',
      'avatar': '',
      'imagen': 'https://i.imgur.com/0DbPpHe.jpg',
      'tiempo': '2 d',
      'likes': '987',
      'comentarios': '200',
      'descripcion': 'Le monto los cachos a mi novio thomas con todos los de datos',
    },
    {
      'usuario': 'quackity',
      'avatar': 'https://i.pravatar.cc/150?img=32',
      'imagen': 'https://i.imgur.com/TWow9gT.jpg',
      'tiempo': '6 d',
      'likes': '95.8 mil',
      'comentarios': '768',
      'descripcion': 'Karmaland VI existirá?',
      'meGusta': true,
    },
    {
      'usuario': 'pelicanger_',
      'avatar': 'https://i.pravatar.cc/150?img=8',
      'imagen': 'https://i.imgur.com/SHsz359.jpg',
      'tiempo': '3 d',
      'likes': '11,6 mil',
      'comentarios': '702',
      'descripcion': 'Atlético Parceros Campeón de la Kings Cup Americas!!!',
      'verificado': true,
    },
    {
      'usuario': 'julaiana_betancourt11',
      'avatar': 'https://i.pravatar.cc/150?img=57',
      'imagen': 'https://i.imgur.com/pu7CghW.jpg',
      'tiempo': '5 d',
      'likes': '356',
      'comentarios': '143',
      'descripcion': 'Saquenme de Yopal',
      'lugar': 'Vía Aguazul - Yopal',
    },
  ];

  Widget _post(Map<String, dynamic> p) {
    final bool meGusta = p['meGusta'] ?? false;
    final bool verificado = p['verificado'] ?? false;
    final String? lugar = p['lugar'];

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.pinkAccent, width: 2),
                ),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(p['avatar']),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        p['usuario'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if (verificado) ...[
                        const SizedBox(width: 4),
                        const Icon(Icons.verified, size: 14, color: Colors.blue),
                      ],
                      const SizedBox(width: 8),
                      Text(
                        p['tiempo'],
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  if (lugar != null)
                    Text(lugar, style: const TextStyle(fontSize: 12)),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 10),
          ImagenUsuario(urlImagen: p['imagen']),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(
                meGusta ? Icons.favorite : Icons.favorite_border,
                size: 28,
                color: meGusta ? Colors.red : null,
              ),
              const SizedBox(width: 5),
              Text(p['likes']),
              const SizedBox(width: 15),
              const Icon(Icons.chat_bubble_outline, size: 28),
              const SizedBox(width: 5),
              Text(p['comentarios']),
              const SizedBox(width: 15),
              const Icon(Icons.repeat, size: 28),
              const SizedBox(width: 15),
              const Icon(Icons.send, size: 28),
              const Spacer(),
              const Icon(Icons.bookmark_border, size: 28),
            ],
          ),
          const SizedBox(height: 8),

          
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${p['usuario']} ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: p['descripcion']),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Ver los ${p['comentarios']} comentarios',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 470),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const historias(color: Colors.pinkAccent),
                    const SizedBox(height: 10),
                    for (final p in posts) _post(p),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}