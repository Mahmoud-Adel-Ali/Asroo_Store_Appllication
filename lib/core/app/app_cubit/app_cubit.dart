import 'package:asroo_store/core/services/shared_preferences/pref_key.dart';
import 'package:asroo_store/core/services/shared_preferences/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;
  String currentLanguageCode = 'en';
  // theme mode
  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangedMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref().setBoolean(PrefKeys.mode, isDark).then((value) {
        emit(AppState.themeChangedMode(isDark: isDark));
      });
    }
  }

//language change
  // get saved language
  void getSavedLanguage({Locale? locale}) {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    currentLanguageCode = result!;
    emit(AppState.languageChanged(loacal: Locale(result)));
  }

  Future<void> _changeLanguage(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLanguageCode = langCode;
    emit(LanguageChanged(loacal: Locale(langCode)));
  }

  void toArabic() {
    _changeLanguage('ar');
  }

  void toEnglish() {
    _changeLanguage('en');
  }
}
