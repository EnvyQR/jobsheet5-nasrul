import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> mahasiswa = [
    {'nama': 'Aurelia Dhea Syafenia', 'nim': 'STI202102409'},
    {'nama': 'Fadhli Al Fiqri', 'nim': 'STI202102411'},
    {'nama': 'Moch. Nasrullah', 'nim': 'STI202102420'},
    {'nama': 'Deni Kusuma Wardana', 'nim': 'STI202102421'},
    {'nama': 'Affan Nur Afto', 'nim': 'STI202102425'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          return Container(
            color: mahasiswa[index]['nama'] == 'Moch. Nasrullah' ? Colors.green : Colors.transparent,
            child: ListTile(
              title: Text(mahasiswa[index]['nama']!),
              subtitle: Text('NIM: ${mahasiswa[index]['nim']}'),
            ),
          );
        },
      ),
    );
  }
}
