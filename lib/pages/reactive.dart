import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_practice/getx/controller.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reactive way')),
      body: Center(
        child: GetBuilder<Counter>(
          init: Counter(),
          builder: (controller) => Text('clicks : ${controller.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<Counter>().increase();
        },
      ),
    );
  }
}
