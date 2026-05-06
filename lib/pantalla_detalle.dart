import 'package:flutter/material.dart';
import 'pantalla_model.dart';

class PantallaDetalle extends StatelessWidget {
  final Planta planta;
  const PantallaDetalle({super.key, required this.planta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(planta.nombreComun)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen cuadrada con esquinas redondeadas
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                planta.imagen,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              planta.nombreCientifico,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey),
            ),
            const Divider(height: 30),
            
            _buildSection("Propiedades", planta.propiedades, Colors.green.shade800),
            _buildSection("Características", planta.caracteristicas, Colors.brown.shade700),
            
            const Text(
              "Reproducción",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tipo: ${planta.tipoReproduccion}", style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Text("Cómo se reproduce: ${planta.comoSeReproduce}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función auxiliar para no repetir código de secciones
  Widget _buildSection(String titulo, String contenido, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
        const SizedBox(height: 10),
        Text(contenido, style: const TextStyle(fontSize: 16, height: 1.5)),
        const SizedBox(height: 25),
      ],
    );
  }
}