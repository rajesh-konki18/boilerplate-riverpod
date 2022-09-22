import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/extensions/context_extension.dart';
import '../../../../core/utils/styles/dimensions/ui_dimensions.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../widgets/icons/back_icon.dart';

final isPwdObscure = StateProvider.autoDispose((_) => true);

class ForgotPasswordScreen extends HookConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            child: BackIcon(),
          ),
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
                      "Reset Password",
                      style: context.h2.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    UIDimensions.verticalSpace(8),
                    const Text(
                      "Enter the email associated with your account and we'll email you a link to reset your password.",
                    ),
                    UIDimensions.verticalSpace(24),
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
                    PrimaryButton(
                      onPressed: () {},
                      text: "Reset",
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
