import 'package:flutter/material.dart';
import 'package:tp_project/constants/colors.dart';
import 'package:tp_project/rounds/begin.dart';
import 'package:tp_project/rounds/end.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 12),
      width: size.width,
      height: size.height / 4.5,
      decoration: BoxDecoration(
        color: mintTulip.withOpacity(0.5),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        image: DecorationImage(
          image: const NetworkImage(
            "https://img.freepik.com/vecteurs-premium/carte-du-monde-gris-fond-blanc_42634-10.jpg?w=740",
          ),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(mintTulip.withOpacity(0.8), BlendMode.srcOver),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: SizedBox(
                    width: 30, height: 30, child: Icon(Icons.arrow_back)),
              ),
              Text(
                'Flights',
                style: TextStyle(color: black, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.edit, color: black),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                ('JFK'),
                style: TextStyle(color: orangePale),
              ),
              const SizedBox(width: 15),
              const ThickBegin(),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          print(
                              "the width is, ${constraints.constrainWidth()}");
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 4).floor(),
                              (index) => const SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: grey),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: const Icon(
                          Icons.local_airport,
                          color: fuscousGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ThickEnd(),
              const SizedBox(width: 15),
              const Text(
                ('HND'),
                style: TextStyle(color: teaGreen, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(('New York'), style: TextStyle(color: fuscousGrey)),
              Text(('Tokyo'), style: TextStyle(color: fuscousGrey)),
            ],
          ),
        ]),
      ),
    );
  }
}
