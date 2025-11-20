import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Map")),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-6.9175, 107.6191), // Bandung
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-6.9175, 107.6191),
                width: 40,
                height: 40,
                child: const Icon(Icons.location_on, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
