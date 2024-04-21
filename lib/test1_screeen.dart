import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                context.pushReplacementNamed(AppRoutes.test2Screen);
              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            context.translate('app_name'),
            style: const TextStyle(fontSize: 50),
          ),
          const SizedBox(
            height: 50,
          ),
          // Image.asset(context.image.mainImage),
        ],
      ),
    );
  }
}
