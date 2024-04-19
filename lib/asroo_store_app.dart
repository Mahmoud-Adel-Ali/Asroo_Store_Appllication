import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env_variable.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            child: MaterialApp(
              title: 'Asroo Store',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: themeDark(),// or themeLight
              builder: (context, widget) {
                ConnectivityController.instance.init();
                return widget!;
              },
              // home: const Home(),
              initialRoute: AppRoutes.test1Screen,
              onGenerateRoute: AppRoutes.onGenerateRoute,
            ),
          );
        }
        return MaterialApp(
          title: 'No network',
          debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
          home: const NoNetworkScreen(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asroo Store'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'محمود عادل',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'My Font',
              style: TextStyle(fontSize: 20,),
            ),
            Text(
              'محمود عادل',
              style: TextStyle(
                fontSize: 20,
                fontFamily: FontFamilyHelper.cairoArabic,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            Text( 
              'My Font',
              style: TextStyle(
                fontSize: 20,
                fontFamily: FontFamilyHelper.poppinsEnglish,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
