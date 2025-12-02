import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rabbaanii_portal/models/user/login.dart';
import 'package:rabbaanii_portal/res/env.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/debug_dio_interceptor.dart';
import 'package:rabbaanii_portal/utils/logging_interceptor.dart';
import 'package:rabbaanii_portal/utils/response_interceptor.dart';
import 'package:rabbaanii_portal/utils/shared_preferences_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Logger logger(LoggerRef ref) {
  return Logger();
}

@Riverpod(keepAlive: true)
LoggingInterceptor loggingInterceptor(LoggingInterceptorRef ref) {
  return LoggingInterceptor(ref.watch(loggerProvider));
}

@riverpod
Login? getCurrentUser(GetCurrentUserRef ref) {
  final json = ref
      .watch(sharedPreferencesHelperProvider)
      .getObject<Map<String, dynamic>>(AppConstant.keyLoginSession);
  if (json == null) return null;
  final currentUser = Login.fromJson(json);
  return currentUser;
}

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.interceptors.add(ResponseInterceptor());
  // dio.interceptors.add(DebugDioInterceptor());
  // Uncomment berikut untuk log request/response Dio dengan PrettyDioLogger
  dio.interceptors.add(PrettyDioLogger(
    requestBody: true,
    responseBody: true,
    requestHeader: true,
    responseHeader: true,
  ));

  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.baseUrl = Env.baseUrl;
  return dio;
}

@Riverpod(keepAlive: true)
FirebaseMessaging firebaseMessaging(FirebaseMessagingRef ref) {
  final fcm = FirebaseMessaging.instance;
  fcm.requestPermission();
  fcm.setForegroundNotificationPresentationOptions(
    alert: true, // Tampilkan heads-up notification
    badge: true,
    sound: true,
  );
  return fcm;
}

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
SharedPreferencesHelper sharedPreferencesHelper(
  SharedPreferencesHelperRef ref,
) {
  return SharedPreferencesHelper(ref.watch(sharedPreferencesProvider));
}

@Riverpod(keepAlive: true)
AudioPlayer audioPlayer(AudioPlayerRef ref) {
  return AudioPlayer();
}

@riverpod
DateTime? parseDateTime(ParseDateTimeRef ref, String dateString) {
  return DateFormat('yyyy-MM-dd').tryParse(dateString);
}

@riverpod
String? formatTime(FormatTimeRef ref, String? timeString, {String? format}) {
  if (timeString == null) {
    return null;
  }
  try {
    final dateTime = DateFormat('HH:mm:ss').parse(timeString).toLocal();
    return DateFormat(format ?? 'HH:mm').format(dateTime);
  } catch (_) {
    return null;
  }
}

@riverpod
String formatCurrency(FormatCurrencyRef ref, dynamic number) {
  final currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp',
    decimalDigits: 0,
  );
  final parseNominal = double.tryParse('$number') ?? 0;
  return currencyFormat.format(parseNominal);
}

@riverpod
String? formatDate(FormatDateRef ref, String dateString, {String? format}) {
  final date = ref.watch(parseDateTimeProvider(dateString));
  if (date == null) return null;
  return DateFormat(format ?? 'dd MMM yyyy', 'id').format(date);
}

@riverpod
String? formatTimeFromDate(FormatTimeFromDateRef ref, String? dateString) {
  if (dateString == null) return null;
  final dateTime = DateTime.tryParse(dateString)?.toLocal();
  if (dateTime == null) return null;
  return DateFormat('HH:mm').format(dateTime);
}

@riverpod
Future<Position> getCurrentLocation(GetCurrentLocationRef ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) return Future.error('Location services are disabled.');

  var permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, cannot request permissions.');
  }

  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}
