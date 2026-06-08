import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/violation/mukholif_santri.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';

class MukholifSearchScreen extends ConsumerStatefulWidget {
  const MukholifSearchScreen({super.key});

  @override
  ConsumerState<MukholifSearchScreen> createState() =>
      _MukholifSearchScreenState();
}

class _MukholifSearchScreenState extends ConsumerState<MukholifSearchScreen> {
  final _searchController = TextEditingController();
  AsyncValue<List<MukholifSantri>>? _santriList;
  List<MukholifSantri> _filteredSantri = [];
  String? _warningMessage;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadWaliSantri();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadWaliSantri() async {
    debugPrint('🔵 [_loadWaliSantri] START');
    final currentUser = ref.read(getCurrentUserProvider);
    final key = currentUser?.key;
    debugPrint('🔵 [_loadWaliSantri] key: $key');
    if (key == null || key.isEmpty) {
      debugPrint('🔴 [_loadWaliSantri] Key is null or empty - showing error');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Session expired, please login again')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      debugPrint('🔵 [_loadWaliSantri] State updated - _isLoading: true');
    });

    try {
      debugPrint('🔵 [_loadWaliSantri] Calling violationServiceProvider.getWaliSantri(key)');
      final result = await ref
          .read(violationServiceProvider)
          .getWaliSantri(key);
      
      debugPrint('🔵 [_loadWaliSantri] Response received - result: ${result.data}');
      debugPrint('🔵 [_loadWaliSantri] result.data length: ${result.data?.length ?? 0}');
      debugPrint('🔵 [_loadWaliSantri] result.errCode: ${result.errCode}');
      debugPrint('🔵 [_loadWaliSantri] result.msg: ${result.msg}');

      setState(() {
        _santriList = AsyncValue.data(result.data ?? []);
        _filteredSantri = result.data ?? [];
        _warningMessage = result.warningMessage;
        _isLoading = false;
        debugPrint('🔵 [_loadWaliSantri] State updated - _isLoading: false, data count: ${result.data?.length ?? 0}');
      });
    } catch (e, st) {
      debugPrint('🔴 [_loadWaliSantri] CAUGHT EXCEPTION: $e');
      debugPrint('🔴 [_loadWaliSantri] Stack trace: $st');
      String errorMessage = 'Terjadi kesalahan';
      if (e is DioException) {
        debugPrint('🔴 [_loadWaliSantri] DioException - error type: ${e.type}');
        debugPrint('🔴 [_loadWaliSantri] DioException - error message: ${e.message}');
        if (e.error is RestException) {
          final restException = e.error as RestException;
          errorMessage = restException.message;
          debugPrint('🔴 [_loadWaliSantri] RestException message: ${restException.message}');
          debugPrint('🔴 [_loadWaliSantri] RestException code: ${restException.errorCode}');
        } else if (e.message != null) {
          errorMessage = e.message!;
        }
      } else {
        debugPrint('🔴 [_loadWaliSantri] Non-DioException - type: ${e.runtimeType}');
      }
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      
      setState(() {
        _santriList = AsyncValue.error(e, st);
        _isLoading = false;
        debugPrint('🔴 [_loadWaliSantri] State updated with error - _isLoading: false');
      });
    }
  }

  void _filterSantri(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredSantri = _santriList?.valueOrNull ?? [];
      });
      return;
    }

    final lowercaseQuery = query.toLowerCase();
    setState(() {
      _filteredSantri = (_santriList?.valueOrNull ?? [])
          .where((santri) =>
              santri.nama?.toLowerCase().contains(lowercaseQuery) == true)
          .toList();
    });
  }

  Future<void> _manualSearch() async {
    final currentUser = ref.read(getCurrentUserProvider);
    final key = currentUser?.key;
    if (key == null || key.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Session expired, please login again')),
      );
      return;
    }

    final query = _searchController.text.trim();
    if (query.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nama minimal 3 karakter')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final result = await ref
          .read(violationServiceProvider)
          .searchMukholifSantri(key, query);

      setState(() {
        _santriList = AsyncValue.data(result.data ?? []);
        _filteredSantri = result.data ?? [];
        _warningMessage = result.warningMessage;
        _isLoading = false;
      });
    } catch (e, st) {
      String errorMessage = 'Terjadi kesalahan';
      if (e is DioException) {
        if (e.error is RestException) {
          errorMessage = (e.error as RestException).message;
        } else if (e.message != null) {
          errorMessage = e.message!;
        }
      }
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      
      setState(() {
        _santriList = AsyncValue.error(e, st);
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari Santri'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Ketik nama santri...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    textInputAction: TextInputAction.search,
                    onChanged: _filterSantri,
                    onSubmitted: (_) => _manualSearch(),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton(
                  onPressed: _isLoading ? null : _manualSearch,
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text('Cari'),
                ),
              ],
            ),
          ),
          if (_warningMessage != null)
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                children: [
                  Icon(Icons.warning_amber, color: Colors.orange.shade700),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _warningMessage!,
                      style: TextStyle(color: Colors.orange.shade700),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 8),
          Expanded(
            child: _santriList == null || _isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : _santriList!.when(
                    data: (allSantri) {
                      if (_filteredSantri.isEmpty) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_off,
                                size: 64,
                                color: context.colorOnSurface.withOpacity(0.3),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                _searchController.text.isEmpty
                                    ? 'Tidak ada santri ditemukan'
                                    : 'Tidak ada santri dengan nama "${_searchController.text}"',
                                style: context.bodyMedium?.copyWith(
                                  color: context.colorOnSurface.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: _filteredSantri.length,
                        itemBuilder: (context, index) {
                          final santri = _filteredSantri[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 12),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              leading: CircleAvatar(
                                backgroundColor:
                                    context.colorPrimary.withOpacity(0.1),
                                child: Text(
                                  santri.nama?.substring(0, 1).toUpperCase() ??
                                      '?',
                                  style: TextStyle(
                                    color: context.colorPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(
                                santri.nama ?? 'Unknown',
                                style: context.bodyMediumBold,
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (santri.nis != null && santri.nis!.isNotEmpty)
                                    Text(
                                      'NIS: ${santri.nis}',
                                      style: context.bodySmall?.copyWith(
                                        color: context.colorOnSurface.withOpacity(0.7),
                                      ),
                                    ),
                                  if (santri.kelas != null || santri.kamar != null)
                                    Text(
                                      'Kelas ${santri.kelas ?? '-'} • Kamar ${santri.kamar ?? '-'}',
                                      style: context.bodySmall,
                                    ),
                                  Text(
                                    'Poin Aktif: ${santri.poinAktif ?? 0}',
                                    style: context.bodySmall?.copyWith(
                                      color: (santri.poinAktif ?? 0) > 0
                                          ? Colors.red
                                          : Colors.green,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {
                                context.goNamed(
                                  AppRoute.mukholifDetail.name,
                                  extra: {
                                    'santri_id': santri.santrialId,
                                    'nama': santri.nama,
                                    'kelas': santri.kelas,
                                    'kamar': santri.kamar,
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
error: (e, st) {
                       String errorMessage = 'Terjadi kesalahan';
                       if (e is DioException) {
                         if (e.error is RestException) {
                           errorMessage = (e.error as RestException).message;
                         } else if (e.message != null) {
                           errorMessage = e.message!;
                         }
                       }
                       return Center(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.error_outline,
                               size: 64,
                               color: context.colorError,
                             ),
                             const SizedBox(height: 16),
                             Text(
                               errorMessage,
                               style: context.bodyMedium,
                             ),
                             const SizedBox(height: 8),
                             TextButton(
                               onPressed: _loadWaliSantri,
                               child: const Text('Coba Lagi'),
                             ),
                           ],
                         ),
                       );
                     },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}