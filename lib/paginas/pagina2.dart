import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fondo gris claro
      appBar: AppBar(
        // Corregido: Colors.blue (minúscula)
        title: const Text("segunda pagina 6J", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black, // AppBar Negro
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1547082299-de196ea013d6?w=500&auto=format&fit=crop&q=60',
                  height: 250,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text("Ir a la Fase Final"),
            ),
          ],
        ),
      ),
    );
  }
}