// lib/location_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'member.dart'; // Import Member class

class LocationScreen extends StatelessWidget {
  final Member member;

  const LocationScreen({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location for ${member.name}'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194), // Example, replace with actual location
                zoom: 14.0,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Visited Location 1'),
                  subtitle: Text('Time: 10:00 AM'),
                ),
                ListTile(
                  title: Text('Visited Location 2'),
                  subtitle: Text('Time: 12:00 PM'),
                ),
                // Add more visited locations
              ],
            ),
          ),
        ],
      ),
    );
  }
}
