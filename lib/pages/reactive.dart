import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_practice/getx/controller.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counter = Get.put(ReactiveCounter());
    return Scaffold(
      appBar: AppBar(title: const Text('Reactive way')),
      body: Center(
        child: Obx(() => Text('Clicks : ${counter.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.count++;
        },
      ),
    );
  }
}
