import 'package:asroo_store/core/env_variable.dart';
import 'package:flutter/material.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asroo Store',
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asroo Store"),
        centerTitle: true,
      ),
    );
  }
}
