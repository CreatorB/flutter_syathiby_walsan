import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:rabbaanii_portal/presentation/register/register_controller.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      registerControllerProvider,
      (previous, next) {
        next.showToastOnError(context);
      },
    );
    final registerController = ref.watch(registerControllerProvider);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final passwordVisible = useState<bool>(false);
    final studentSelected = useState<Siswa?>(null);
    final parentName = useTextEditingController();
    final phoneNumber = useTextEditingController();
    final email = useTextEditingController();
    final address = useTextEditingController();
    final password = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Wali Siswa'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
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
              controller: parentName,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Nama Wali Santri'.hardcoded,
                prefixIcon: const Icon(Icons.person),
                border: const OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.required(),
            ),
            const Gap(16),
            TextFormField(
              controller: phoneNumber,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Nomer Telepon'.hardcoded,
                prefixIcon: const Icon(Icons.phone),
                border: const OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.numeric(),
                ],
              ),
            ),
            const Gap(16),
            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Email'.hardcoded,
                prefixIcon: const Icon(Icons.email),
                border: const OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.required(),
            ),
            const Gap(16),
            TextFormField(
              controller: address,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Alamat'.hardcoded,
                prefixIcon: const Icon(Icons.maps_home_work),
                border: const OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.required(),
            ),
            const Gap(16),
            TextFormField(
              controller: password,
              obscureText: !passwordVisible.value,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Password'.hardcoded,
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  padding: const EdgeInsets.all(16.0),
                  onPressed: () {
                    passwordVisible.value = !passwordVisible.value;
                  },
                  icon: Icon(
                    passwordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ],
              ),
            ),
            const Gap(16),
            FilledButton(
              onPressed: () async {
                if (!formKey.currentState!.validate()) {
                  return;
                }
                final result = await ref
                    .read(registerControllerProvider.notifier)
                    .registerParent(
                      studentId: studentSelected.value?.idSiswa ?? '',
                      parentName: parentName.text,
                      phoneNumber: phoneNumber.text,
                      email: email.text,
                      address: address.text,
                      password: password.text,
                    );
                if (!context.mounted) return;
                context.showSuccessMessage(result?.msg ?? '');
                context.pop();
              },
              child: registerController.isLoading
                  ? const CircularProgressIndicator()
                  : const Text('DAFTAR'),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(8, 0),
                  child: const Text('Sudah punya akun?'),
                ),
                TextButton(
                  child: const Text('MASUK DISINI'),
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
