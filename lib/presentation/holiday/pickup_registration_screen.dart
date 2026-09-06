import 'dart:typed_data';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:rabbaanii_portal/presentation/holiday/pickup_controller.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PickupRegistrationScreen extends HookConsumerWidget {
  final String? eventId;

  const PickupRegistrationScreen({
    super.key,
    this.eventId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(pickupControllerProvider, (previous, next) {
      next.showToastOnError(context);
    });
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final fetchCurrentPickup = ref.watch(
      fetchAllPickupParentProvider(key: key, id: '$eventId'),
    );
    final currentPickup = fetchCurrentPickup.valueOrNull?.firstOrNull;
    final isUpdate = currentPickup != null;

    final activityController = ref.watch(pickupControllerProvider);
    final parentName = useTextEditingController();
    final relation = useTextEditingController();
    final imageSelected = useState<(Uint8List? localBytes, String? imageUrl)>(
      (null, null),
    );

    useEffect(() {
      if (!isUpdate) return;
      parentName.text = currentPickup.penjemput ?? '';
      relation.text = currentPickup.hubungan ?? '';
      imageSelected.value = (null, currentPickup.imgPenjemput);
      return null;
    }, [fetchCurrentPickup]);

    final formKey = useMemoized(GlobalKey<FormState>.new, const []);

    Future<void> addPickupRegistration() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      if (!isUpdate && imageSelected.value.$1 == null) {
        context.showErrorMessage('Foto penjemput wajib dilampirkan');
        return;
      }
      if (isUpdate && imageSelected.value.$1 == null) {
        context.showErrorMessage('Foto penjemput harus diubah');
        return;
      }
      final result = isUpdate
          ? await ref
              .read(
                pickupControllerProvider.notifier,
              )
              .editRegistrationPickup(
                key: key,
                parentName: parentName.text,
                relation: relation.text,
                eventId: '$eventId',
                image: imageSelected.value.$1,
              )
          : await ref
              .read(
                pickupControllerProvider.notifier,
              )
              .registrationPickup(
                key: key,
                parentName: parentName.text,
                relation: relation.text,
                eventId: '$eventId',
                image: imageSelected.value.$1,
              );
      if (result == null || !context.mounted) return;

      context.showSuccessMessage(result.msg);
      ref.invalidate(fetchAllPickupParentProvider);
      context.pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan Aktivitas'.hardcoded),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchAllPickupParentProvider(key: key, id: '$eventId').future,
        ),
        child: Skeletonizer(
          enabled: fetchCurrentPickup.isLoading,
          child: ListView(
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        onTap: () async {
                          final file = await _openImagePicker(context);
                          imageSelected.value = (file, null);
                        },
                        child: AdvancedAvatar(
                          size: 120,
                          decoration: BoxDecoration(
                            color: context.colorSurface,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: context.colorOutline,
                            ),
                          ),
                          image: imageSelected.value.$1 != null
                              ? MemoryImage(
                                  imageSelected.value.$1!,
                                ) as ImageProvider
                              : NetworkImage('${imageSelected.value.$2}'),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Center(
                        child: Text(
                          'Foto Penjemput',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      TextFormField(
                        controller: parentName,
                        textInputAction: TextInputAction.done,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Nama Penjemput'.hardcoded,
                          prefixIcon: const Icon(Icons.person),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      Gap(16),
                      TextFormField(
                        controller: relation,
                        textInputAction: TextInputAction.done,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Hubungan dengan santri'.hardcoded,
                          prefixIcon: const Icon(Icons.group),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const Gap(24),
                      FilledButton(
                        onPressed: activityController.isLoading
                            ? null
                            : addPickupRegistration,
                        child: activityController.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                'Proses'.hardcoded,
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Uint8List?> _openImagePicker(
    BuildContext context,
  ) async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return null;
    final imageCompressed = await FlutterImageCompress.compressWithList(
      await image.readAsBytes(),
      quality: 10,
    );
    return Uint8List.fromList(imageCompressed);
  }
}
