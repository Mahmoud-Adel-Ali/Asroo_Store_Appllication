import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/env_variable.dart';
import 'package:asroo_store/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Platform.isAndroid

  await EnvVariable.instance.init(envTypeEnum: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const AsrooStoreApp());
  });
}
