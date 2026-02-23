import 'package:flutter/material.dart';
import 'package:myapp/paginas/pagina1.dart';
import 'package:myapp/paginas/pagina2.dart';
import 'package:myapp/paginas/pagina3.dart';


void main() {
  runApp(const MiAppElectro());
}

class MiAppElectro extends StatelessWidget {
  const MiAppElectro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Martinez 6J Luxury',
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/segunda': (context) => const Pagina2(),
        '/tercera': (context) => const Pagina3(),
      },
    );
  }
}
