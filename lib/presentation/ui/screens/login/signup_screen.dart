import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/extensions/context_extension.dart';
import '../../../../core/utils/styles/dimensions/ui_dimensions.dart';
import '../../../providers/core/router_provider.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../widgets/icons/back_icon.dart';

final isPwdObscure = StateProvider.autoDispose((_) => true);

class SignUpScreen extends HookConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.read(appRouterProvider);

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
                      "Join MyQUILITY",
                      style: context.h2.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    UIDimensions.verticalSpace(8),
                    const Text("Enjoy member benefits with MyQuility"),
                    UIDimensions.verticalSpace(36),
                    Text(
                      "First Name*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "John",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Last Name*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "Doe",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Phone Number*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "72xxxx28xx",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Email*",
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
                      "Password*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      obscureText: ref.watch(isPwdObscure),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "Password",
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
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Confirm Password*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      obscureText: ref.watch(isPwdObscure),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "Confirm Password",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "Zip Code*",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: "50xx8x",
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Text(
                      "How did you hear about us?",
                      style: context.bodyText1,
                    ),
                    UIDimensions.verticalSpace(8),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintStyle:
                            context.subtitle2.copyWith(color: Colors.grey),
                      ),
                    ),
                    UIDimensions.verticalSpace(8),
                    Text(
                      "By Continuing, you are agreeing to our Terms & Conditions and Privacy Policy",
                      style: context.h6.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    UIDimensions.verticalSpaceMedium,
                    PrimaryButton(
                      onPressed: () {},
                      text: "Join",
                    ),
                    UIDimensions.verticalSpaceMedium,
                    Center(
                      child: GestureDetector(
                        onTap: () => appRouter.pop(),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already a member? ",
                                style: context.h6.copyWith(
                                  color: context.primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "Sign In",
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
