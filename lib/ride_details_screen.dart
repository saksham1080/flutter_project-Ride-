import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  final String rideName;

  const RideDetailsScreen({required this.rideName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$rideName Details'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Text(
          'Details about $rideName.',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
