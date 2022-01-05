import 'package:flutter/material.dart';

class Buscar extends StatefulWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  State<Buscar> createState() => _BuscarEstado();
}

class _BuscarEstado extends State<Buscar> {
  final _controller =
      TextEditingController.fromValue(const TextEditingValue(text: "..."));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Búsqueda"),
            leading: CloseButton(),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  print("Apretado");
                },
                child: Text('Buscar'),
              ),
            ]),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(80),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            controller: _controller,
            onChanged: ((event) {
              print(event);
            }),
          ),
        ));
  }
}
