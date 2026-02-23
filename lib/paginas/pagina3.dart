import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo lila muy suave para que no canse la vista
      backgroundColor: const Color(0xFFF3E5F5), 
      appBar: AppBar(
        title: const Text(
          "pagina 3 Electro Martinez", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)
        ),
        // AppBar en color Violeta
        backgroundColor: Colors.purple, 
        elevation: 5,
        centerTitle: true,
        // Flecha de regreso en blanco
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.purple.withAlpha(100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icono de laptop en violeta
                    const Icon(
                      Icons.laptop_chromebook_rounded, 
                      size: 100, 
                      color: Colors.purple
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Soporte Electro Martinez",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22, 
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Configuración 6J Exitosa",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    // Botón de regreso estilizado
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.home_filled),
                      label: const Text("VOLVER AL INICIO"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}