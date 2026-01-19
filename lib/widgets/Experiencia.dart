import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  final String empresa;
  final String fechIni;
  final String FechFIn;
  final String labores;

  const Experiencia ({
    super.key,
    required this.empresa,
    required this.fechIni,
    required this.FechFIn,
    required this.labores,
  });

  @override
  Widget build (BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(empresa, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
          ),
          Text("$fechIni - $FechFIn"),
          const SizedBox(height: 5,),
          Text(labores)
        ],
      ),
    );
  }





}