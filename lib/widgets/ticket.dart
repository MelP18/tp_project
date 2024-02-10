import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tp_project/constants/colors.dart';
import 'package:tp_project/rounds/neutral.dart';
class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: mintTulip),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.only(left: 20, right: 20),
            // margin: const EdgeInsets.only(left: 15, right: 15),
            //padding:
            // const EdgeInsets.only(top: 10, left: 5, bottom: 5, right: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.circle),
                    const SizedBox(width: 5),
                    const Text(
                      'JL-7452',
                      style: TextStyle(color: fuscousGrey, fontSize: 10),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 5, right: 10, bottom: 5, left: 10),
                      decoration: const BoxDecoration(
                          color: palePeach,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Text(
                        'The best',
                        style: TextStyle(
                            color: orangePale,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text(
                      '12h05',
                      style: TextStyle(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 15),
                    const ThickNeutral(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    "the width is, ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                color: grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ThickNeutral(),
                    const SizedBox(width: 15),
                    const Text(
                      '16h05',
                      style: TextStyle(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Sun, 14 Feb 24',
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    Spacer(),
                    Text(
                      '14h 10min',
                      style: TextStyle(color: grey, fontSize: 8),
                    ),
                    Spacer(),
                    Text(
                      'Mon, 19 Feb 24',
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(children: [
              const SizedBox(
                width: 15,
                height: 25,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(25)))),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    print("the width is, ${constraints.constrainWidth()}");
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 6).floor(),
                        (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: grey)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 15,
                height: 25,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(25)))),
              ),
            ]),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: const Row(children: [
              Icon(
                Icons.car_rental,
                color: orangePale,
              ),
              SizedBox(width: 5),
              Text(
                'Business Class',
                style: TextStyle(
                    color: grey, fontWeight: FontWeight.bold, fontSize: 10),
              ),
              Spacer(),
              Text(
                "\$233",
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
