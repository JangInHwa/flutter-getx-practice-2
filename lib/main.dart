import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_practice/pages/reactive.dart';
import 'package:getx_state_management_practice/pages/simple.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX state management'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('simple way'),
              onPressed: () {
                Get.to(() => const SimplePage());
              },
            ),
            TextButton(
              child: const Text('reactive way'),
              onPressed: () {
                Get.to(() => const ReactivePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
