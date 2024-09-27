// lib/route_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteScreen extends StatelessWidget {
  final List<LatLng> routePoints;

  RouteScreen(this.routePoints);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: routePoints.first,
          zoom: 12.0,
        ),
        polylines: {
          Polyline(
            polylineId: PolylineId('route'),
            points: routePoints,
            color: Colors.blue,
            width: 5,
          ),
        },
        markers: routePoints.map((point) {
          return Marker(
            markerId: MarkerId(point.toString()),
            position: point,
          );
        }).toSet(),
      ),
    );
  }
}
