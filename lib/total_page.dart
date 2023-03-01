import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/my_cart.dart';
import 'package:shopping_cart/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total items',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              const SizedBox(height: 10),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  )),
              const SizedBox(height: 10),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => Get.back(),
                    child: Text(
                      "Go Back",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
