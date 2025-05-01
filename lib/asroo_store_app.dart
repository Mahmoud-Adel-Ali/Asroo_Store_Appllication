import 'package:asroo_store/core/app/app_cubit/app_cubit.dart';
import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env_variable.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/language/app_localizations_setup.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:asroo_store/core/services/shared_preferences/pref_key.dart';
import 'package:asroo_store/core/services/shared_preferences/shared_pref.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return BlocProvider<AppCubit>(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.mode),
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    title: 'Asroo Store',
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                    theme: cubit.isDark ? themeDark() : themeLight(),
                    builder: (context, widget) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                    // home: const Home(),
                    initialRoute: AppRoutes.login,
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    //localizations section
                    locale: Locale(cubit.currentLanguageCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                  );
                },
              ),
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
