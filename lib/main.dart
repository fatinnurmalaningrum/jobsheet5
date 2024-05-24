import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Absensi Mahasiswa Teknik Informatika'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MahasiswaCard(nama: 'Muhammad Rifki STI202102498'),
              MahasiswaCard(nama: 'Septi Apriliya Wulandari STI202102504'),
              MahasiswaCard(nama: 'Fatin Nurmalaningrum STI202102505'),
              MahasiswaCard(nama: 'Imaculata Hagar Kemala STI202102516'),
              MahasiswaCard(nama: 'Margareta Stephani STI202102517'),
            ],
          ),
        ),
      ),
    );
  }
}

class MahasiswaCard extends StatelessWidget {
  final String nama;

  const MahasiswaCard({Key? key, required this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a map to store colors for each student
    final Map<String, Color> studentColors = {
      'Muhammad Rifki STI202102498': Colors.blue,
      'Septi Apriliya Wulandari STI202102504': Colors.blue,
      'Fatin Nurmalaningrum STI202102505': Colors.green,
      'Imaculata Hagar Kemala STI202102516': Colors.blue,
      'Margareta Stephani STI202102517': Colors.blue,
    };

    // Get the color for the current student name from the map
    final Color textColor = studentColors[nama] ?? Colors.black;

    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          nama,
          style: TextStyle(fontSize: 18, color: textColor), // Apply text color
        ),
        leading: CircleAvatar(
          child: Text(
            nama[0],
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
