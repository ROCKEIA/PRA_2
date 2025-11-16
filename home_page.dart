import 'package:flutter/material.dart';

import 'views/list_view.dart';

class MiPagina extends StatelessWidget {
  const MiPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://www.hola.com/horizon/landscape/4e04aa3a4df7-ejercicios-objetivo-t.jpg?im=Resize=(640),type=downsize",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListadoItemsPage()),
              );
            },
            child: const Text("ENTRENAMIENTOS"),
          ),
        ),
      ),
    );
  }
}