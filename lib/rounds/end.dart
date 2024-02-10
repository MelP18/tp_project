import 'package:flutter/material.dart';
import 'package:tp_project/constants/colors.dart';

class ThickEnd extends StatelessWidget {
  const ThickEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: teaGreen)),
      child: const Icon(Icons.circle,color: teaGreen, size: 6,),
    );
  }
}
