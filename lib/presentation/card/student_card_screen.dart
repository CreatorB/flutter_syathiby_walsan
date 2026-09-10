import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rabbaanii_portal/generated/assets.gen.dart';
import 'package:rabbaanii_portal/presentation/settings/setting/account_controller.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/providers.dart';

class StudentCardScreen extends HookConsumerWidget {
  const StudentCardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    // Nomor wali yang sedang login -- lihat catatan di account_controller.dart.
    final noWali = '${currentUser?.user ?? ''}';
    final fetchProfile = ref.watch(fetchProfileProvider(
      key: key,
      phoneNumber: noWali,
    ));
    final profile = fetchProfile.valueOrNull;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Siswa'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchProfileProvider(
            key: key,
            phoneNumber: noWali,
          ).future,
        ),
        child: Skeletonizer(
          enabled: fetchProfile.isLoading,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: context.colorPrimary,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      // color: context.colorPrimary,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        border: Border.all(color: context.colorOutlineVariant),
                        color: context.colorPrimary,
                      ),
                      child: Center(
                        child: Text(
                          '${profile?.nameStore}',
                          style: context.titleMediumBold?.copyWith(
                            color: context.colorOnPrimary,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 48,
                    //   right: 8,
                    //   child: ClipOval(
                    //     child: Card(
                    //       elevation: 0,
                    //       color: context.colorSurface,
                    //       shape: RoundedRectangleBorder(
                    //         side: BorderSide(color: context.colorPrimary, width: 2),
                    //         borderRadius: BorderRadius.circular(
                    //           100,
                    //         ), // Large radius to ensure it’s circular
                    //       ),
                    //       child: Container(
                    //         width: 48,
                    //         height: 48,
                    //         padding: const EdgeInsets.all(6.0),
                    //         child: Image.asset(
                    //           Assets.images.logo.path,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      top: 96,
                      left: 16,
                      child: CustomAvatar(
                        imageUrl: '${profile?.img}',
                        name: '${profile?.namaSiswa ?? profile?.fullName}',
                        size: 70,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 8,
                      child: QrImageView(
                        data: '${profile?.nis}',
                        version: QrVersions.auto,
                        size: 50.0,
                        padding: const EdgeInsets.all(4),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 68,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Kartu Tanda Siswa',
                        style: context.bodyMediumBold?.copyWith(
                          color: context.colorPrimary,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 100,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NIS      : ${profile?.nis}',
                            style: context.bodySmall,
                          ),
                          Text(
                            'Nama   : ${profile?.namaSiswa ?? profile?.fullName}',
                            style: context.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'TTL      : ${profile?.ttl}',
                            style: context.bodySmall,
                          ),
                          Text(
                            'Alamat : Indonesia',
                            style: context.bodySmall,
                          ),
                          Text(
                            'Kelas   : ${profile?.kelas ?? '-'}',
                            style: context.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        Assets.images.logo.path,
                        opacity: const AlwaysStoppedAnimation(0.25),
                        height: 70,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // Column(
                    //   children: [
                    //
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
