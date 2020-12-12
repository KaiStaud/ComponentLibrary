// Route gets called when a new Component is added to library
import 'package:flutter/material.dart';

enum Footprint {
  smd_1206,
  smd_0805,
  smd_SOIC8,
  smd_SOIC16,
  smd_SOIC32,
  smd_LQFP_32,
  smd_LQFP_64,
  tht_2pole,
  tht_TO220,
  debo,
  undefined,
}

class Component{
  int partsAvailable;
  Footprint footprint;
}

class PassiveComponent extends Component{
  int value;
  String type;
}

class RouteAddComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Component'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
