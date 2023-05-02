import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controlers/orang_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final orangC = Get.put(OrangController()); //panggil controlers

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Getx'),
        ),
        body: Center(
          child: Obx(
            () => Text(
              "Nama Saya :${orangC.orang.value.nama}",
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orangC.prosesUbahHuruf();
          },
        ),
      ),
    );
  }
}
