import 'package:flutter/material.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  NearbyScreenState createState() => NearbyScreenState();
}

class NearbyScreenState extends State<NearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Nearby"),
      ),
    );
  }
}
