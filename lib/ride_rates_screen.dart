import 'package:flutter/material.dart';

class RideRatesScreen extends StatelessWidget {
  const RideRatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rates = [
      {'ride': 'Ride 1', 'rate': '₹200'},
      {'ride': 'Ride 2', 'rate': '₹300'},
      {'ride': 'Ride 3', 'rate': '₹400'},
      {'ride': 'Ride 4', 'rate': '₹500'},
      {'ride': 'Ride 5', 'rate': '₹600'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride Rates'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: rates.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            elevation: 5,
            child: ListTile(
              title: Text(rates[index]['ride']!),
              subtitle: Text('Rate: ${rates[index]['rate']}'),
            ),
          );
        },
      ),
    );
  }
}
