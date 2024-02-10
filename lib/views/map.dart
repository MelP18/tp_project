import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tp_project/constants/colors.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapState();
}

class _MapState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: const MapOptions(
            initialCenter: LatLng(6.3683, 2.4252),
            initialZoom: 17,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
        // OpenStreetMapSearchAndPick(
        //   buttonColor: Colors.blue,
        //   buttonText: 'Localisation actuelle',
        //   locationPinText: 'Actuelle',
        //   onPicked: (pickedData) {},
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.arrow_back)),
                  ),
                  //TextField(
                    // cursorColor: black,
                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(100)),
                    //   ),
                    //   suffixIcon: Icon(
                    //     Icons.location_on_outlined,
                    //     color: white,
                    //   ),
                    //   suffixIconConstraints: BoxConstraints(
                    //       maxWidth: 30,
                    //       minWidth: 20,
                    //       minHeight: 20,
                    //       maxHeight: 30),
                    //   hintText: "Recherchez une localité",
                    //   hintStyle: TextStyle(
                    //       color: black,
                    //       fontStyle: FontStyle.italic,
                    //       fontSize: 15),
                    // ),
                  //),
                ],
              ),
              ListView(scrollDirection: Axis.horizontal, children: const [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                ),
              ),
               Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                ),
              ),
               Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                ),
              ),
               Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                ),
              ),
               Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                ),
              ),
              ])
              // ListView(scrollDirection: Axis.horizontal, children: const [
              //   Card(
              //     child: Padding(
              //       padding: EdgeInsets.all(15.0),
              //     ),
              //   ),
              //    Card(
              //     child: Padding(
              //       padding: EdgeInsets.all(15.0),
              //     ),
              //   ),
              //    Card(
              //     child: Padding(
              //       padding: EdgeInsets.all(15.0),
              //     ),
              //   ),
              //    Card(
              //     child: Padding(
              //       padding: EdgeInsets.all(15.0),
              //     ),
              //   ),
              //    Card(
              //     child: Padding(
              //       padding: EdgeInsets.all(15.0),
              //     ),
              //   ),
              // ])
            ],
          ),
        ),
      ],
    );
  }
}
