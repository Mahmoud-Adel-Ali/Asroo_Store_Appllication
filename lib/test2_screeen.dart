import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:flutter/material.dart';

class TestTwoScreen extends StatelessWidget {
  const TestTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Test Two'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            context.pushReplacementNamed(AppRoutes.test1Screen);

          },
          child: Container(
            height: 50,
            width: 150,
            color:const Color.fromARGB(255, 144, 144, 144),
          ),
        ),
      ),
    );
  }
}
