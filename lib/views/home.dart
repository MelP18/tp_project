import 'package:flutter/material.dart';
import 'package:tp_project/constants/colors.dart';
import 'package:tp_project/widgets/header.dart';
import 'package:tp_project/widgets/listTicket.dart';
import 'package:tp_project/widgets/ticket.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Header(),
          //const Text("zd er i uytrge wdxfrgthyju,  rthyu")
          // SingleChildScrollView(
          //   child: ListView(
          //     children: const [
          Container(
            child: ListView(
              //children: const ListTicket(),
            ),
          ),
        ],
      ),
    );
    //     ],
    //   ),
  }
}
