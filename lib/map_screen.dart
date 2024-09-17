import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
   MapScreen({super.key});
  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/text.png', // Path to your PNG logo
              height: 30.0, // Adjust as needed
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Chip(
                label: Text('Online', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        leading: Container(), // Ensure no leading widget (e.g., back arrow)
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: const MapOptions(
              initialCenter: LatLng(14.6760, 121.0437), // Center the map on Quezon City
              initialZoom: 12.0, // Initial zoom level
              //maxZoom: 16.0, // Limit maximum zoom to avoid showing too much detail
              //minZoom: 10.0, // Limit minimum zoom to avoid showing areas outside Quezon City
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: _buildMarkers(),
              ),
            ],
          ),
          Positioned(
            top: 100,
            left: 16,
            right: 16,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Status: Stand by",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  List<Marker> _buildMarkers() {
    // Example markers for fire stations
    final List<LatLng> fireStationLocations = [
      const LatLng(14.6760, 121.0437), // Example location in Quezon City
      const LatLng(14.6760, 121.0837), // Another location in Quezon City
      const LatLng(14.6760, 121.0237), // Another location in Quezon City
      const LatLng(14.6761, 121.1135), // Another location in Quezon City
      // Add more locations as needed
    ];

    return fireStationLocations
        .map(
          (location) => Marker(
            width: 50.0,
            height: 50.0,
            point: location,
            child: const Icon(Icons.local_fire_department, color: Colors.red, size: 30.0),
          ),
        )
        .toList();
  }
}
