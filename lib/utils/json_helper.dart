import 'dart:convert';

String extractJsonSafely(dynamic raw, {String endpoint = 'unknown'}) {
  final rawString = raw is String ? raw : raw.toString();
  print('🔍 RAW RESPONSE $endpoint type: ${raw.runtimeType}, length: ${rawString.length}');

  if (raw is List) {
    print('✅ Response is already a List, re-encoding to JSON');
    return jsonEncode(raw);
  }

  if (raw is Map) {
    print('✅ Response is already a Map, re-encoding to JSON');
    return jsonEncode(raw);
  }

  if (rawString.trim().startsWith('[')) {
    print('✅ Response starts with [, treating as JSON array');
    return rawString;
  }

  final startIndex = rawString.indexOf('{');
  final endIndex = rawString.lastIndexOf('}');
  if (startIndex == -1 || endIndex == -1 || endIndex <= startIndex) {
    if (rawString.contains('<br') || rawString.contains('<!DOCTYPE') || rawString.contains('<html')) {
      throw FormatException('Server mengirim HTML error, bukan JSON. Raw: ${rawString.substring(0, 300)}');
    }
    throw FormatException('JSON tidak ditemukan di respons $endpoint. Raw: ${rawString.substring(0, 300)}');
  }
  final cleanJson = rawString.substring(startIndex, endIndex + 1);
  print('✅ EXTRACTED JSON $endpoint: ${cleanJson.substring(0, 100)}...');
  return cleanJson;
}