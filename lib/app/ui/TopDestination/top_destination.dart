import 'package:flutter/material.dart';

class TopDestinationPage extends StatefulWidget {
  const TopDestinationPage({super.key});

  @override
  State<TopDestinationPage> createState() => _TopDestinationPageState();
}

class _TopDestinationPageState extends State<TopDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Destination"),
      ),
    );
  }
}
