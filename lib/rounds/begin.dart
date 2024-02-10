import 'package:flutter/material.dart';
import 'package:tp_project/constants/colors.dart';

class ThickBegin extends StatelessWidget {
  const ThickBegin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: orangePale)),
      child: const Icon(
        Icons.circle,
        color: orangePale,
        size: 6,
      ),
    );
  }
}
