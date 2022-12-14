import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/configs/constants/app_constants.dart';
import '../../providers/core/app_state_provider.dart';
import 'landing_screen.dart';
import 'login/login_screen.dart';

class AppStartScreen extends HookConsumerWidget {
  const AppStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(appStateProvider).when(
          initial: () => const SizedBox.shrink(),
          onboarding: () => const SizedBox.shrink(),
          unAuthenticated: () => LoginScreen(),
          authenticated: (user) => LandingScreen(
            key: AppConstants.landingScreenKey,
          ),
        );
  }
}
