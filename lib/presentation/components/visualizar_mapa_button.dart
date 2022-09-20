import 'package:flutter/material.dart';

class VisualizarMapaButton extends StatelessWidget {
  const VisualizarMapaButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  final Function function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            maximumSize: Size(size.width * 0.6, size.height * 0.06)),
        onPressed: function as void Function()?,
        child: const Text(
          "Clique aqui \npara visualizar o mapa",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.5),
        ));
  }
}
