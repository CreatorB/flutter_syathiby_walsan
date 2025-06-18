import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/presentation/activity/school_activity_screen.dart';
import 'package:rabbaanii_portal/presentation/home/home_controller.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';

import '../../models/student/siswa.dart';
import '../register/register_controller.dart';

class BottomsheetAddStudentScreen extends HookConsumerWidget {
  const BottomsheetAddStudentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      homeControllerProvider,
      (previous, next) => next.showToastOnError(context),
    );
    final key = ref.watch(getCurrentUserProvider)?.key;
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final studentSelected = useState<Siswa?>(null);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Akun Santri'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card.outlined(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  AppConstant.addStudentMessage,
                  style: context.bodyMediumBold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownSearch<Siswa>(
              selectedItem: studentSelected.value,
              items: (String filter, props) {
                return ref.watch(
                  fetchStudentParentProvider(query: filter).future,
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
                  hintText: 'Pilih Santri',
                  labelText: 'Pilih Santri',
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
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () async {
                if (!formKey.currentState!.validate()) {
                  return;
                }
                final result = await ref
                    .read(homeControllerProvider.notifier)
                    .addStudentAccount(
                      key: '$key',
                      nis: '${studentSelected.value?.nis}',
                      studentId: '${studentSelected.value?.idSiswa}',
                      classId: '${studentSelected.value?.idKelas}',
                    );
                if (result == null || !context.mounted) return;
                context.showSuccessMessage(result.msg);
                context.pop();
                ref.invalidate(fetchStudentDataProvider);
              },
              child: const Text('Simpan'),
            )
          ],
        ),
      ),
    );
  }
}
