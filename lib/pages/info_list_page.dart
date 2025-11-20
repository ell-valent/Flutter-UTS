import 'package:flutter/material.dart';

class InfoListPage extends StatelessWidget {
  const InfoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {"nama": "Kampus UTB", "desc": "Lokasi kampus utama"},
      {"nama": "Alun-alun Bandung", "desc": "Tempat wisata kota Bandung"},
      {"nama": "Gedung Sate", "desc": "Ikon provinsi Jawa Barat"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("List Informasi")),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (_, i) {
          return ListTile(
            leading: const Icon(Icons.place),
            title: Text(data[i]["nama"]!),
            subtitle: Text(data[i]["desc"]!),
          );
        },
      ),
    );
  }
}
