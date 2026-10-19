import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_control/util/smart_device_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double horizontalPadding = 20;
  static const double verticalPadding = 15;

  List<dynamic> smartDevices = [
    ['Smart Light', 'assets/images/light.png', true],
    ['Smart TV', 'assets/images/tv.png', false],
    ['Smart AC', 'assets/images/ac.png', false],
    ['Smart Speaker', 'assets/images/speaker_1.png', false],
  ];

  void onPowerChanged(bool value,  int index) {
    setState(() {
      smartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 45, color: Colors.grey[800]),
                  Icon(Icons.account_circle, size: 45, color: Colors.grey[800]),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Home,",style: TextStyle(fontSize: 25.0,color: Colors.grey[700]),),
                  Text("ANDREW", style: TextStyle(fontSize: 52.0)),
                ],
              ),
            ),

            const SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text("Smart Devices",style: TextStyle(fontSize: 20.0),),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: smartDevices.length,
                padding: EdgeInsets.all(15.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    name: smartDevices[index][0],
                    path: smartDevices[index][1],
                    isPoweredOn: smartDevices[index][2],
                    onPowerChanged: (value) => onPowerChanged(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
