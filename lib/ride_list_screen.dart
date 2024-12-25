import 'package:flutter/material.dart';
import 'ride_details_screen.dart';

class RideListScreen extends StatelessWidget {
  const RideListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rides = ['Ride 1', 'Ride 2', 'Ride 3', 'Ride 4', 'Ride 5'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride List'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          return FadeInListTile(
            title: rides[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RideDetailsScreen(rideName: rides[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class FadeInListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const FadeInListTile({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }
}
