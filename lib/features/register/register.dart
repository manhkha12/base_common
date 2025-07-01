import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/features/register/cubit/signup_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/utils/validate_form.dart';
import 'package:smart_home/shared/widgets/app_layout.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_form_field.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';
import 'package:smart_home/shared/widgets/simple_toastification.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);
  late final SignupCubit signupCubit;

  @override
  void initState() {
    signupCubit = context.read<SignupCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        child: Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: BlocListener<SignupCubit,SignupState>(
        listener: (context, state) {
              state.error?.whenOrNull(
                data: (error, _) => showErrorToast(error),
              );
              if (state.isSignupSuccess) {
                showSuccessToast('register.register_success'.tr());

                Navigator.of(context).pushReplacementNamed(RouteName.login);
              }},
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(child: AppText('Dang ky')),
              AppText('gmail'),
              AppTextFormField(
                validator: (value) {
                  return Validation.validateEmail(value);
                },
                onChanged: (value) {
                  signupCubit.setEmail(value);
                },
              ),
              AppText('mat khau'),
              ValueListenableBuilder(
                valueListenable: _passwordVisibleNotifier,
                builder: (context, isOn, _) {
                  return AppTextFormField(
                    validator: (value) => Validation.validatePass(value),
                    onChanged: (value) {
                      signupCubit.setPassword(value);
                    },
                    suffixIcon: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        _passwordVisibleNotifier.value = !isOn;
                      },
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxWidth: 34, maxHeight: 34),
                        child: Center(
                          child:
                              (!isOn ? Assets.icons.eyeOff : Assets.icons.eyeOn)
                                  .svg(
                            width: 18,
                            color: context.colors.placeholderColor,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              AppText('nhap lai mat khau'),
              AppTextFormField(
                onChanged: (value) {
                  signupCubit.setConfirmPassword(value);
                },
              ),
              AppText('ho ten'),
              AppTextFormField(
                validator: (value) => Validation.validateUserName(value),
                onChanged: (value) {
                  signupCubit.setFullName(value);
                },
              ),
              AppText('ten day du'),
              AppTextFormField(
                onChanged: (value) {
                  signupCubit.setFullName(value);
                },
              ),
              BlocBuilder<SignupCubit, SignupState>(builder: (context, state) {
                final isValid = state.isValid;
                return AppButton(
                    label: 'Dang ky',
                    onPressed: isValid
                        ? () {
                            var valid =
                                (_formKey.currentState as FormState).validate();
                            if (valid) {
                              signupCubit.register();
                            }
                          }
                        : null);
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
