import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            context.pushReplacementNamed(AppRoutes.test2Screen);
            // Navigator.of(context).pushReplacementNamed(AppRoutes.test2Screen);
          },
          child: Container(
            height: 50,
            width: 150,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
