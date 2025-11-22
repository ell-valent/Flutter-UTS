import 'package:flutter/material.dart';

class InfoListPage extends StatelessWidget {
  const InfoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {"nama": "Kampus UNTAD", "desc": "Lokasi kampus utama"},
      {"nama": "Lembang Park Zoo", "desc": "Kawasan rekreasi"},
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
