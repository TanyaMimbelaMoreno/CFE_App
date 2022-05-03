import 'package:flutter/material.dart';
import 'package:mimbela/galeriaCFE.dart';

void main() {
  runApp(CFEApp());
} //Función principal

class CFEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'App CFE', home: PaginaInicial());
  } //Widget
} //Clase CFEApp widget sin estado
