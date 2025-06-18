import 'dart:convert';

import 'package:rabbaanii_portal/models/prayer/dhikr/dhikr.dart';
import 'package:rabbaanii_portal/models/prayer/dhikr/pray_response.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dhikr_controller.g.dart';

@riverpod
Future<List<Dhikr>> fetchMorningDhikr(FetchMorningDhikrRef ref) async {
  final result = await ref.watch(dhikrServiceProvider).getMorningDhikr();
  List<dynamic> json = jsonDecode(result);
  return json.map((e) => Dhikr.fromJson(e)).toList();
}

@riverpod
Future<List<Dhikr>> fetchEveningDhikr(FetchEveningDhikrRef ref) async {
  final result = await ref.watch(dhikrServiceProvider).getEveningDhikr();
  List<dynamic> json = jsonDecode(result);
  return json.map((e) => Dhikr.fromJson(e)).toList();
}

@riverpod
Future<PrayResponse> fetchPrayList(FetchPrayListRef ref) async {
  return await ref.watch(dhikrServiceProvider).getPrayList();
}
