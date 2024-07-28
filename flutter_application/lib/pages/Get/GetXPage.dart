import 'package:flutter/material.dart';
import 'package:flutter_application/pages/Get/CounterController.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class GetXpage extends StatelessWidget {
  const GetXpage({super.key});

  @override
  Widget build(BuildContext context) {
    final countercontroller = Get.find<Countercontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Count:${countercontroller.count}'),
            ),
            // Consumer<Counter>(builder: (context, Counter counter, child) {
            //   return Text('${counter.count}');
            // }),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  countercontroller.increment();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
