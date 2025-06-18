import 'package:rabbaanii_portal/res/env.dart';

abstract class AppConstant {
  static const String appName = 'RABBAANII PORTAL';
  static const String youtubeChannelName = 'Rabbaanii TV';
  static const String keyLoginSession = 'login_session';
  static const String keyUserSession = 'user_session';
  static const String keyDeviceToken = 'device_token';
  static const String keyPaymentHistory = 'payment';
  static const String keyMurottalSurahSelected = 'murottal_surah_selected';
  static const String keyMurottalAyahSelected = 'murottal_ayah_selected';
  static const String keyLastReadAyah = 'last_read_ayah';
  static const String keybookmarkAyah = 'bookmark_ayah';
  // URL
  static const String storeUrl = '${Env.baseUrl}store/';
  static const String aboutUrl = '${Env.baseUrl}pages/about.php';
  static const String termUrl = '${Env.baseUrl}pages/term.php';
  static const String privacyUrl = '${Env.baseUrl}pages/privacy.php';
  static const String premiumUrl = '${Env.baseUrl}pages/premium.php?key=';
  static const String newsUrl = '${Env.baseUrl}pages/news.php';
  static const String qiblaFinderUrl =
      'https://qiblafinder.withgoogle.com/intl/id/onboarding';
  static const String teachingPlannerUrl = 'https://apps.rabbaanii.sch.id/rpp/';
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
