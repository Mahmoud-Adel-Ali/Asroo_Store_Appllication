import 'package:asroo_store/core/app/app_cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  getit.registerFactory<AppCubit>(AppCubit.new);
}
