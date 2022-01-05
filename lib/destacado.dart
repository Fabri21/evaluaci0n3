import 'package:flutter/material.dart';

class Destacado extends StatefulWidget {
  const Destacado({Key? key}) : super(key: key);

  @override
  State<Destacado> createState() => _DestacadoEstado();
}

class _DestacadoEstado extends State<Destacado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Eventos Destacados'),
    ));
  }
}
