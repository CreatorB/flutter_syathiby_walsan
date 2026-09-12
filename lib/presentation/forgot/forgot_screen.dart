import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/presentation/forgot/forgot_controller.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:url_launcher/url_launcher.dart';

/// Reset kata sandi wali, dua langkah:
///  1. Nomor HP + email -> minta kode (forgotPassword).
///  2. Kode + kata sandi baru -> verifikasi (verifyResetWali).
///
/// Langkah 2 hanya muncul kalau server membalas `butuh_kode: true`, yaitu
/// saat BREVO_API_KEY sudah diisi pondok (lihat forgetpasswordwali.php).
/// Kalau belum, server tetap membalas pesan "hubungi pondok" seperti biasa,
/// dan tombol WhatsApp di bawah muncul kalau `kontak_wa` terisi -- jalan
/// pintas yang tersedia terlepas dari status Brevo.
class ForgotScreen extends HookConsumerWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useTextEditingController();
    final phone = useTextEditingController();
    final kode = useTextEditingController();
    final passwordBaru = useTextEditingController();
    final passwordUlang = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final langkahKedua = useState(false);
    final kontakWa = useState('');

    ref.listen(
      forgotControllerProvider,
      (previous, next) => next.showToastOnError(context),
    );

    Future<void> bukaWhatsapp() async {
      final nomor = kontakWa.value;
      if (nomor.isEmpty) return;
      final pesan = Uri.encodeComponent(
        'Assalamu\'alaikum, saya wali santri ingin bantuan mengatur ulang kata sandi akun Walsan.',
      );
      final url = Uri.parse('https://wa.me/$nomor?text=$pesan');
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }

    Widget tombolWhatsapp() {
      if (kontakWa.value.isEmpty) return const SizedBox.shrink();
      return Padding(
        padding: const EdgeInsets.only(top: 12),
        child: OutlinedButton.icon(
          onPressed: bukaWhatsapp,
          icon: const Icon(Icons.chat),
          label: const Text('Hubungi Admin via WhatsApp'),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            minimumSize: const Size(double.infinity, 50.0),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => langkahKedua.value
              ? langkahKedua.value = false
              : context.go('/guest-user'),
        ),
        title: const Text('Reset Password'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: langkahKedua.value
                  ? [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4),
                            Text(
                              'Masukkan kode yang dikirim ke email Anda, lalu kata sandi baru',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: kode,
                        decoration: InputDecoration(
                          hintText: 'Kode dari email (6 digit)',
                          prefixIcon: const Icon(Icons.pin),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                          FormBuilderValidators.maxLength(6),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwordBaru,
                        decoration: InputDecoration(
                          hintText: 'Kata Sandi Baru',
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                        obscureText: true,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwordUlang,
                        decoration: InputDecoration(
                          hintText: 'Ulangi Kata Sandi Baru',
                          prefixIcon: const Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value != passwordBaru.text) {
                            return 'Kata sandi tidak sama';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      FilledButton(
                        onPressed: () async {
                          if (!formKey.currentState!.validate()) return;
                          final result = await ref
                              .read(forgotControllerProvider.notifier)
                              .verifyResetWali(
                                phoneNumber: phone.text,
                                kode: kode.text,
                                newPassword: passwordBaru.text,
                              );
                          if (result == null || !context.mounted) return;
                          final okResult = await showOkAlertDialog(
                            context: context,
                            title: 'Reset Password',
                            message: result.msg,
                          );
                          if (result.errCode != '01') return;
                          if (okResult != OkCancelResult.ok ||
                              !context.mounted) {
                            return;
                          }
                          context.pop();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          minimumSize: const Size(double.infinity, 50.0),
                        ),
                        child: const Text('Ganti Kata Sandi'),
                      ),
                      tombolWhatsapp(),
                    ]
                  : [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 48),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4),
                            Text(
                              'Masukkan nomor telepon dan email yang sudah terdaftar',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: phone,
                        decoration: InputDecoration(
                          hintText: 'Nomer Telepon',
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(),
                            FormBuilderValidators.minLength(6),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(),
                            FormBuilderValidators.email(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      FilledButton(
                        onPressed: () async {
                          if (!formKey.currentState!.validate()) {
                            return;
                          }
                          final result = await ref
                              .read(forgotControllerProvider.notifier)
                              .forgotPassword(
                                email: email.text,
                                phoneNumber: phone.text,
                              );
                          if (result == null || !context.mounted) return;
                          kontakWa.value = result.kontakWa;
                          if (result.butuhKode) {
                            langkahKedua.value = true;
                            return;
                          }
                          final okResult = await showOkAlertDialog(
                            context: context,
                            title: 'Reset Password',
                            message: result.msg,
                          );
                          if (okResult != OkCancelResult.ok ||
                              !context.mounted) {
                            return;
                          }
                          context.pop();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          minimumSize: const Size(
                            double.infinity,
                            50.0,
                          ),
                        ),
                        child: const Text('Reset Password'),
                      ),
                      tombolWhatsapp(),
                    ],
            ),
          ),
        ),
      ),
    );
  }
}
