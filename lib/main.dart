import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Malang', style: TextStyle(fontSize: 50)),
              Text('25\u00B0', style: TextStyle(fontSize: 100)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  weatherInformation(
                    icon: Icons.sunny,
                    text: "Senin",
                    suhu: '20\u00B0',
                  ),
                  weatherInformation(
                    icon: Icons.cloudy_snowing,
                    text: "Selasa",
                    suhu: '23\u00B0',
                  ),
                  weatherInformation(
                    icon: Icons.cloud,
                    text: "Rabu",
                    suhu: '22\u00B0',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }
}

class KotakBiruJempolKecil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }
}

class weatherInformation extends StatelessWidget {
  final IconData icon;
  final String text;
  final String suhu;
  // final String text;

  const weatherInformation({
    super.key,
    required this.icon,
    required this.text,
    required this.suhu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text, style: TextStyle(fontSize: 25)),
        SizedBox(height: 18),
        Icon(icon, color: Colors.black, size: 75),
        SizedBox(height: 18),
        Text(suhu, style: TextStyle(fontSize: 25)),
      ],
    );
  }
}
