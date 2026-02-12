import 'package:flutter/material.dart';

void main() {
  runApp(const AppEventos());
}

class AppEventos extends StatelessWidget {
  const AppEventos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eventos Poplas",
      home: const EventosOrganizados(),
    );
  }
}

class EventosOrganizados extends StatelessWidget {
  const EventosOrganizados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '"Eventos Woody" Paola Ortega 6J',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 107, 218, 255), // Azul clarito (LightBlue)
        leading: const Icon(
          Icons.cake, // Icono de pastel
          color: Color.fromARGB(255, 10, 75, 129),
        ),
        actions: const [
          Icon(
            Icons.camera, // Icono de globo
            color: Color.fromARGB(255, 10, 75, 129),
          ),
          SizedBox(width: 15),
          Icon(
            Icons.calendar_month, // Icono de calendario
            color: Color.fromARGB(255, 10, 75, 129),
          ),
          SizedBox(width: 15),
        ],
      ),

body: ListView.builder(
  padding: const EdgeInsets.all(16.0),
  itemCount: 4, // Definimos los 4 elementos
  itemBuilder: (context, index) {
    // Definimos una lista de datos para que cada elemento sea único
    List<Map<String, dynamic>> items = [
      {'titulo': 'Baby Shower de Lucia', 'sub': 'Proximo nacimiento del bebé de Lucia', 'icon': Icons.person, 'color': Colors.blueAccent},
      {'titulo': 'Fiesta de cumpleaños de Jesus', 'sub': 'Cumpleaños #18 de Jesus', 'icon': Icons.wallet, 'color': Colors.greenAccent[700]},
      {'titulo': 'Aniversario de Ambar', 'sub': 'Festejo del aniversario #6 de casados', 'icon': Icons.lock, 'color': Colors.orangeAccent},
      {'titulo': 'Fiesta familiar Terrazas', 'sub': 'Convivio familiar', 'icon': Icons.support_agent, 'color': Colors.redAccent},
    ];

    final item = items[index];

    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // LEADING: Icono con fondo circular moderno
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: item['color'].withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(item['icon'], color: item['color']),
        ),
        // TÍTULO Y SUBTÍTULO
        title: Text(
          item['titulo'],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: Text(item['sub']),
        // TRAILING: Botón de acción funcional
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        // FUNCIONALIDAD: Al presionar muestra un mensaje
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Abriendo: ${item['titulo']}'),
              backgroundColor: item['color'],
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  },
),

    );
  }
}