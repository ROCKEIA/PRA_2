import 'package:flutter/material.dart';
import '../data/items_data.dart';
import '../models/item.dart';

class ListadoItemsPage extends StatelessWidget {
  const ListadoItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ENTRAR A ENTRENAMIENTOS"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.hola.com/horizon/landscape/4e04aa3a4df7-ejercicios-objetivo-t.jpg?im=Resize=(640),type=downsize", // Añade la URL que quieras
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Capa para oscurecer un poco el fondo (opcional)
          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          // Contenido principal (ListView)
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              Item item = items[index];

              return GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("La pantalla se detallará en la Fase 3"),
                    ),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.all(12),
                  elevation: 8,
                  shadowColor: Colors.white.withOpacity(0.5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.network(
                          item.imagenUrl,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(child: CircularProgressIndicator());
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Icon(Icons.broken_image)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.titulo,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Texto más visible
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item.descripcion,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
