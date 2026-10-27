import 'package:flutter/material.dart';
import 'package:prueba_poo/widget/historia_usuario.dart';

class historias extends StatelessWidget {
  final Color color;

  const historias({super.key, required this.color});
  static const List<Map<String, String>> historias = [
    {'nombre': 'manuel.castrobarinas', 'foto': 'https://i.imgur.com/LrRyoTe.jpeg'},
    {'nombre': 'joveneshoy777', 'foto': 'https://i.imgur.com/6hV47uC.jpeg'},
    {'nombre': 'anniesofi', 'foto': 'https://i.imgur.com/5nvIFYZ.jpeg'},
    {'nombre': 'juan_ponguta', 'foto': 'https://i.imgur.com/NxZqN1h.jpeg'},
    {'nombre': 'daissy_forero', 'foto': 'https://i.imgur.com/ZMODHJt.jpeg'},
    {'nombre': 'jose_suarez', 'foto': 'https://i.imgur.com/H6iOAYq.jpeg'},
    {'nombre': 'fray_checho', 'foto': 'https://i.imgur.com/Yx9Ww9i.jpeg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final historia in historias) ...[
              HistoriaUsuario(
                color: color,
                titulo: historia['nombre']!,
                urlImagen: historia['foto'],
              ),
              const SizedBox(width: 12),
            ],
          ],
        ),
      ),
    );
  }
}
