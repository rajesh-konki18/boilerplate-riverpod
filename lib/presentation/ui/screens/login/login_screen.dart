import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/router/app_router.gr.dart';
import '../../../../core/utils/extensions/context_extension.dart';
import '../../../../core/utils/styles/dimensions/ui_dimensions.dart';
import '../../../../domain/enums/account_type.dart';
import '../../../providers/core/router_provider.dart';
import '../../../providers/login/login_provider.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../widgets/buttons/secondary_outlined_button.dart';

final isPwdObscure = StateProvider.autoDispose((_) => true);

class LoginScreen extends HookConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginNotifier = ref.watch(loginProvider.notifier);
    final appRouter = ref.watch(appRouterProvider);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          // leading: const Padding(
          //   padding: EdgeInsets.only(top: 14, bottom: 14),
          //   child: BackIcon(),
          // ),
        ),
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Log in to MyQUILITY",
                      style: context.h2.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    UIDimensions.verticalSpace(36),
                    Text(
                      "Email",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "hello@example.com",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Password",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      obscureText: ref.watch(isPwdObscure),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "Your password",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                        suffixIcon: IconButton(
                          onPressed: () {
                            ref
                                .read(isPwdObscure.notifier)
                                .update((state) => !state);
                          },
                          icon: const Icon(Icons.remove_red_eye_rounded),
                        ),
                      ),
                    ),
                    UIDimensions.verticalSpace(24),
                    GestureDetector(
                      onTap: () => appRouter.push(ForgotPasswordRoute()),
                      child: Text(
                        "Forgot Password?",
                        style: context.h6.copyWith(
                          color: context.primaryColor,
                        ),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    PrimaryButton(
                      onPressed: () async => loginNotifier.logIn(
                        AccountType.guest,
                        isSignInButton: true,
                      ),
                      text: "Login",
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Center(
                      child: GestureDetector(
                        onTap: () => appRouter.push(SignUpRoute()),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Not a member? ",
                                style: context.h6.copyWith(
                                  color: context.primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "Join Today",
                                style: context.h6.copyWith(
                                  color: context.secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    UIDimensions.verticalSpace(24),
                    Row(
                      children: <Widget>[
                        const Expanded(child: Divider()),
                        Text(
                          "  Or if you're an Agent  ",
                          style: context.bodyText2.copyWith(color: Colors.grey),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    UIDimensions.verticalSpace(24),
                    SecondaryOutlinedButton(
                      text: "HQ | Powered by QUILITY",
                      onPressed: () => appRouter.push(HQLoginRoute()),
                    ),
                    UIDimensions.verticalSpace(24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
