import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:versionarte/versionarte.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../generated/assets.gen.dart';
import '../../generated/fonts.gen.dart';
import 'login_controller.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(loginControllerProvider, (previous, next) {
      next.showToastOnError(context);
    });
    final state = ref.watch(loginControllerProvider);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final passwordVisible = useState(false);
    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();
    final checkUpdateApp = useMemoized(() => _checkAppUpdate(context));
    useFuture(checkUpdateApp);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/guest-user'),
        ),
        title: const Text('Masuk'),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 40.0,
              ),
              child: Column(
                children: [
                  Image.asset(
                    Assets.images.logo.path,
                    width: 175,
                    height: 175,
                  ),
                  const Gap(16),
                 Text(
                    AppConstant.appName,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.calligrapher,
                      color: context.colorPrimary, 
                    ),
                  ),
                  const Gap(32),
                  TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
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
                  const Gap(20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: !passwordVisible.value,
                    decoration: InputDecoration(
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
                  const Gap(20),
                  FilledButton(
                    onPressed: () async {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      final loginResult = await ref
                          .read(loginControllerProvider.notifier)
                          .parentLogin(
                            phoneNumber: phoneNumberController.text,
                            password: passwordController.text,
                          );
                      if (loginResult == null || !context.mounted) return;
                      context.goNamed(AppRoute.home.name);
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
                    child: state.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                context.colorOnPrimary,
                              ),
                            ),
                          )
                        : const Text('Masuk'),
                  ),
                  const Gap(4),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Transform.translate(
                        offset: const Offset(8, 0),
                        child: const Text('Belum punya akun walsan?'),
                      ),
                      TextButton(
                        child: const Text('DAFTAR DISINI'),
                        onPressed: () {
                          context.goNamed(AppRoute.register.name);
                        },
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -12),
                    child: TextButton(
                      onPressed: () {
                        context.goNamed(AppRoute.forgot.name);
                      },
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          color: context.colorPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _checkAppUpdate(BuildContext context) async {
    final result = await Versionarte.check(
      versionarteProvider: const RestfulVersionarteProvider(
        url: AppConstant.updateUrl,
      ),
    );
    if (result.status != VersionarteStatus.outdated || !context.mounted) {
      return;
    }
    final message = result.details?.status.getMessageForLanguage('id');
    final downloadUrl = result.details?.downloadUrl;
    await showOkAlertDialog(
      context: context,
      title: 'Pemberitahuan',
      message: '$message',
      barrierDismissible: false,
      canPop: false,
      okLabel: 'Update',
    );
    final Uri url = Uri.parse('$downloadUrl');
    final isAvailable = await canLaunchUrl(url);
    if (!isAvailable) return;
    await launchUrl(url, mode: LaunchMode.externalApplication);
    _checkAppUpdate(context);
  }
}
