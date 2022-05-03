import 'package:flutter/material.dart';

void main() {
  runApp(CFEApp());
} //Función principal

class CFEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'App CFE', home: PaginaInicial());
  } //Widget
} //Clase CFEApp widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/i1.jpg",
    "assets/images/i2.jpg",
    "assets/images/i3.jpg",
    "assets/images/i4.jpg",
    "assets/images/i5.jpg",
    "assets/images/i6.jpg",
    "assets/images/i7.jpg",
    "assets/images/i8.jpg",
    "assets/images/i1.jpg",
    "assets/images/i2.jpg",
    "assets/images/i3.jpg",
    "assets/images/i4.jpg",
    "assets/images/i5.jpg",
    "assets/images/i6.jpg",
    "assets/images/i7.jpg",
    "assets/images/i8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          automaticallyImplyLeading: true,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ], //actions
          title: Text("Flutter GridView"),
        ),
        drawer: const Drawer(),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 16,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
