import 'package:flutter/material.dart';
import 'pantalla_model.dart';
import 'pantalla_detalle.dart'; // Asegúrate de tener este archivo creado

class PantallaCatalogo extends StatelessWidget {
  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mis Plantas")),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: misPlantas.length,
        itemBuilder: (context, index) {
          final planta = misPlantas[index];
          
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell( // <--- Esto hace que toda la tarjeta sea "cliqueable"
              onTap: () {
                // Esto te lleva a la pantalla de propiedades
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaDetalle(planta: planta),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen cuadrada con esquinas redondeadas
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        planta.imagen,
                        height: 200, // Ajusta esto para que se vea cuadrada
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(planta.nombreComun, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(planta.nombreCientifico, style: const TextStyle(fontStyle: FontStyle.italic)),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}