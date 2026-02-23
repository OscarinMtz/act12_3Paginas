import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9F0), // Blanco verdoso suave
      appBar: AppBar(
        title: const Text("inicio Martinez 6J", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green, // AppBar Verde
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.green[100], // Fondo contenedor verde claro
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withAlpha(50), 
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
                border: Border.all(color: Colors.green.shade300, width: 2),
              ),
              child: const Center(
                child: Text(
                  "Martinez 6J",
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[600], // Botón amarillo solicitado
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              icon: const Icon(Icons.arrow_forward_ios, size: 18),
              label: const Text("PÁGINA SIGUIENTE"),
            ),
          ],
        ),
      ),
    );
  }
}