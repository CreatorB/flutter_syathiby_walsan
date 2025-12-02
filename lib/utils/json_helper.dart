import 'dart:convert';

String extractJsonSafely(String raw, {String endpoint = 'unknown'}) {
  print('🔍 RAW RESPONSE $endpoint: "${raw.substring(0, raw.length > 200 ? 200 : raw.length)}..."');
  
  final startIndex = raw.indexOf('{');
  final endIndex = raw.lastIndexOf('}');
  if (startIndex == -1 || endIndex == -1 || endIndex <= startIndex) {
    if (raw.contains('<br') || raw.contains('<!DOCTYPE') || raw.contains('<html')) {
      throw FormatException('Server mengirim HTML error, bukan JSON. Raw: ${raw.substring(0, 300)}');
    }
    throw FormatException('JSON tidak ditemukan di respons $endpoint. Raw: ${raw.substring(0, 300)}');
  }
  final cleanJson = raw.substring(startIndex, endIndex + 1);
  print('✅ EXTRACTED JSON $endpoint: ${cleanJson.substring(0, 100)}...');
  return cleanJson;
}