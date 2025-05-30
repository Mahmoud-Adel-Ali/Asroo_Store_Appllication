
import 'package:asroo_store/core/services/shared_preferences/pref_key.dart';
import 'package:asroo_store/core/services/shared_preferences/shared_pref.dart';

abstract class FontFamilyHelper {
  // const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFamily() {
    final currentLang = SharedPref().getString(PrefKeys.language);
    if (currentLang == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
