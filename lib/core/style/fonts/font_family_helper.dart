abstract class FontFamilyHelper {
  // const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFamily() {
    //TODO: SharedPreference
    final String CurrentLang = 'ar';
    if (CurrentLang == 'ar'){
      return cairoArabic;
    }else{
      return poppinsEnglish;
    }
  }
}
