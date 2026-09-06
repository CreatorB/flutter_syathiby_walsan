import 'package:rabbaanii_portal/res/environment_config.dart';

abstract class AppConstant {
  static const String appName = 'Walsan Syathiby';
  static const String youtubeChannelName = 'Media Channel';
  static const String keyLoginSession = 'login_session';
  static const String keyUserSession = 'user_session';
  static const String keyDeviceToken = 'device_token';
  static const String keyRememberMe = 'remember_me';
  static const String keySavedPhone = 'saved_phone';
  static const String keySavedPassword = 'saved_password';
  static const String keyPaymentHistory = 'payment';
  static const String keyMurottalSurahSelected = 'murottal_surah_selected';
  static const String keyMurottalAyahSelected = 'murottal_ayah_selected';
  static const String keyLastReadAyah = 'last_read_ayah';
  static const String keybookmarkAyah = 'bookmark_ayah';
  // URL
  static String get storeUrl => '${EnvironmentConfig.baseUrl}store/';
  static String get aboutUrl => '${EnvironmentConfig.baseUrl}pages/about.php';
  static String get termUrl => '${EnvironmentConfig.baseUrl}pages/term.php';
  static String get privacyUrl => '${EnvironmentConfig.baseUrl}pages/privacy.php';
  static String get premiumUrl => '${EnvironmentConfig.baseUrl}pages/premium.php?key=';
  static String get newsUrl => '${EnvironmentConfig.baseUrl}pages/news.php';
  static const String qiblaFinderUrl =
      'https://qiblafinder.withgoogle.com/intl/id/onboarding';
  static String get teachingPlannerUrl => '${EnvironmentConfig.linkBase}/rpp/';
  static const String donateBankAccount = '7199325293';
  static String donateDescription = '''
"Siapa yang membangun masjid karena Allah walaupun hanya selubang tempat burung bertelur atau lebih kecil, maka Allah bangunkan baginya (rumah) seperti itu pula di surga.” (HR. Ibnu Majah no.783)"
      
Siapkan Donasi Terbaikmu bisa melalui transfer ke rekening a.n Masjid Rabbaanii
7199 3252 93
(Bank Syariah Indonesia)
      
note : tambahkan angka 1 di nominal donasi,
contoh : Hamba Allah - Wakaf - Rp 1.000.001
      
Jazaakumullaahu khayran''';

  static const String addStudentMessage = 'Anda bisa menambahkan beberapa santri di akun Wali Murid. Jika santri yang Anda cari tidak ada di dalam list, Silahkan menguhubungi admin untuk dibantu';

  static const String updateUrl = 'https://github.com/rabbaaniiislamicschool/Rabbaanii-Office/raw/refs/heads/main/rabbaanii_portal_update.json';
}
