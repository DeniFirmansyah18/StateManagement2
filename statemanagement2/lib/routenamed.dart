import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement2/managementdependency.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route named dengan GetX")),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //menggunakan route named untuk navigasi
              Get.toNamed('second');
            },
            child: Text("Pindah ke halaman kedua")
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman kedua")),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //kembali kehalaman pertama
              Get.back();
            },
            child: Text("Kembali ke halaman pertama")
        ),
      ),
    );
  }
}
