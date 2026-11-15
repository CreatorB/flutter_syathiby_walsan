import 'package:flutter/material.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';

/// Tampilan gagal memuat dengan tombol coba lagi.
class GagalMemuat extends StatelessWidget {
  const GagalMemuat({super.key, required this.error, required this.onCoba});

  final Object error;
  final VoidCallback onCoba;

  @override
  Widget build(BuildContext context) {
    if (sesiHabis(error)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) clearSessionAndRedirectToLogin(context);
      });
    }
    final warna = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.cloud_off_outlined, size: 56, color: warna.error),
          const SizedBox(height: 16),
          Text(
            pesanKesalahan(error),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: onCoba,
            icon: const Icon(Icons.refresh),
            label: const Text('Coba lagi'),
          ),
        ],
      ),
    );
  }
}

/// Label status pengajuan top-up.
class ChipStatusTopup extends StatelessWidget {
  const ChipStatusTopup({super.key, required this.label, required this.status});

  final String label;
  final String status;

  @override
  Widget build(BuildContext context) {
    final Color warna = status == 'disetujui'
        ? Colors.green.shade700
        : status == 'ditolak'
            ? Colors.red.shade700
            : Colors.orange.shade800;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: warna.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: warna.withOpacity(0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(color: warna, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}
