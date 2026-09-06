import 'dart:typed_data';

import 'package:adaptive_dialog/adaptive_dialog.dart';
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
import 'package:intl/intl.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/presentation/permit/permit_controller.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../models/student/siswa.dart';

class AddPermitScreen extends HookConsumerWidget {
  const AddPermitScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(permitControllerProvider, (previous, next) {
      next.showToastOnError(context);
    });
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final permitController = ref.watch(permitControllerProvider);
    final fetchPermitType = ref.watch(
      fetchPermitTypeProvider(key: key, type: 'santri'),
    );
    final studentSelected = useState<Siswa?>(null);
    final permitTypeId = useState<String?>(null);
    final permitName = useTextEditingController();
    final permitDate = useTextEditingController();
    final howManyDays = useTextEditingController();
    final permitDetail = useTextEditingController();
    final imageSelected = useState<Uint8List?>(null);

    final formKey = useMemoized(GlobalKey<FormState>.new, const []);

    Future<void> addPermit() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      final result = await ref
          .read(
            permitControllerProvider.notifier,
          )
          .addPermit(
            key: key,
            typeId: '${permitTypeId.value}',
            permitName: permitName.text,
            date: permitDate.text,
            classId: '${studentSelected.value?.idKelas}',
            studentId: '${studentSelected.value?.idSiswa}',
            day: howManyDays.text,
            detail: permitDetail.text,
            nis: '${studentSelected.value?.nis}',
            image: imageSelected.value,
          );

      if (result == null || !context.mounted) return;
      if (result.status == 'true' || result.status == true) {
        context.showSuccessMessage(result.msg);
        context.pop(true);
      } else {
        context.showErrorMessage(result.msg);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Kelola Izin'.hardcoded),
      ),
      body: Skeletonizer(
        enabled: fetchPermitType.isLoading,
        child: RefreshIndicator(
          onRefresh: () => ref.refresh(
            fetchPermitTypeProvider(key: key, type: 'santri').future,
          ),
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
                          imageSelected.value = file;
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
                          image: imageSelected.value != null
                              ? MemoryImage(
                                  imageSelected.value!,
                                ) as ImageProvider
                              : null,
                          child: const Icon(
                            Icons.image,
                            size: 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Center(
                        child: Text(
                          'Foto Pendukung',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      DropdownSearch<Siswa>(
                        selectedItem: studentSelected.value,
                        items: (String filter, props) {
                          return ref.watch(
                            fetchGetStudentParentProvider(key: key).future,
                          );
                        },
                        compareFn: (item1, item2) => item1 == item2,
                        popupProps: PopupProps.menu(
                          showSearchBox: true,
                          searchFieldProps: TextFieldProps(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              isDense: true,
                              hintText: 'Pencarian...',
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                        itemAsString: (item) => '${item.namaLengkap}',
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            hintText: 'Nama Siswa',
                            labelText: 'Nama Siswa',
                            border: OutlineInputBorder(),
                            isDense: true,
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        validator: FormBuilderValidators.required(),
                        onChanged: (student) {
                          if (student == null) {
                            return;
                          }
                          studentSelected.value = student;
                        },
                      ),
                      const Gap(16),
                      TextFormField(
                        controller: permitName,
                        readOnly: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Jenis Izin'.hardcoded,
                          prefixIcon: const Icon(Icons.info),
                          suffixIcon: const Icon(Icons.expand_more),
                        ),
                        validator: FormBuilderValidators.required(),
                        keyboardType: TextInputType.text,
                        onTap: () async {
                          final items = fetchPermitType.valueOrNull;
                          if (items == null) return;
                          final selected = await _showPermitTypePicker(
                            context,
                            items,
                          );
                          if (selected == null) return;
                          permitName.text = '${selected.namePermit}';
                          permitTypeId.value = selected.idPermit;
                        },
                      ),
                      const Gap(16),
                      TextFormField(
                        controller: permitDate,
                        readOnly: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Tanggal izin'.hardcoded,
                          prefixIcon: const Icon(Icons.today),
                        ),
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.date(),
                            FormBuilderValidators.required(),
                          ],
                        ),
                        keyboardType: TextInputType.datetime,
                        onTap: () async {
                          final selected = await showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            initialDate: DateTime.now(),
                            lastDate: DateTime(2100),
                          );
                          if (selected == null) return;
                          final formatDate =
                              DateFormat('yyyy-MM-dd').format(selected);
                          permitDate.text = formatDate;
                        },
                      ),
                      const Gap(16),
                      TextFormField(
                        controller: howManyDays,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Berapa hari?'.hardcoded,
                          prefixIcon: const Icon(Icons.calendar_view_day),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.integer(),
                        ]),
                        keyboardType: TextInputType.number,
                      ),
                      const Gap(16),
                      TextFormField(
                        controller: permitDetail,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Detail Izin'.hardcoded,
                          prefixIcon: const Icon(Icons.details),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const Gap(24),
                      FilledButton(
                        onPressed:
                            permitController.isLoading ? null : addPermit,
                        child: permitController.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                'Ajukan'.hardcoded,
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
    final result = await showModalActionSheet(
      title: 'Pilih foto menggunakan',
      context: context,
      actions: [
        SheetAction(
          key: 'photo',
          label: 'Ambil foto'.hardcoded,
          icon: Icons.camera_alt,
        ),
        SheetAction(
          key: 'galery',
          label: 'Pilih dari galeri'.hardcoded,
          icon: Icons.photo,
        ),
      ],
    );
    XFile? image;
    if (result == 'galery') {
      image = await picker.pickImage(source: ImageSource.gallery);
    } else if (result == 'photo') {
      image = await picker.pickImage(source: ImageSource.camera);
    } else {
      return null;
    }
    if (image == null) return null;
    final imageCompressed = await FlutterImageCompress.compressWithList(
      await image.readAsBytes(),
      quality: 10,
    );
    return Uint8List.fromList(imageCompressed);
  }

  Future<Permit?> _showPermitTypePicker(
    BuildContext context,
    List<Permit> items,
  ) {
    return showModalBottomSheet<Permit>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (sheetContext) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          expand: false,
          builder: (_, scrollController) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Text(
                    'Jenis Izin',
                    style: Theme.of(sheetContext).textTheme.titleMedium,
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: ListView.separated(
                    controller: scrollController,
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (_, index) {
                      final item = items[index];
                      return ListTile(
                        title: Text('${item.namePermit}'),
                        onTap: () => Navigator.of(sheetContext).pop(item),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
