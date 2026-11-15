import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:rabbaanii_portal/models/prayer/dhikr/dhikr.dart';
import 'package:rabbaanii_portal/models/prayer/dhikr/pray_response.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dhikr_controller.g.dart';

const _dzikirBaseUrl = 'https://aplikasi.syathiby.id/dzikir';

Future<String> _muatDzikir(String nama) async {
  try {
    final r = await Dio().get<String>(
      '$_dzikirBaseUrl/${nama == 'morning_dhikr.json' ? 'pagi.php' : 'petang.php'}',
      options: Options(
        responseType: ResponseType.plain,
        sendTimeout: const Duration(seconds: 8),
        receiveTimeout: const Duration(seconds: 8),
      ),
    );
    final data = r.data;
    if (data != null && (jsonDecode(data) as List).isNotEmpty) return data;
  } catch (_) {}
  return rootBundle.loadString('assets/json/$nama');
}

@riverpod
Future<List<Dhikr>> fetchMorningDhikr(FetchMorningDhikrRef ref) async {
  final result = await _muatDzikir('morning_dhikr.json');
  List<dynamic> json = jsonDecode(result);
  return json.map((e) => Dhikr.fromJson(e)).toList();
}

@riverpod
Future<List<Dhikr>> fetchEveningDhikr(FetchEveningDhikrRef ref) async {
  final result = await _muatDzikir('evening_dhikr.json');
  List<dynamic> json = jsonDecode(result);
  return json.map((e) => Dhikr.fromJson(e)).toList();
}

@riverpod
Future<PrayResponse> fetchPrayList(FetchPrayListRef ref) async {
  return await ref.watch(dhikrServiceProvider).getPrayList();
}
