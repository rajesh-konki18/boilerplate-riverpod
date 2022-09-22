import 'package:auto_route/auto_route.dart';

import '../../presentation/ui/modals/bottom_sheets/bottom_sheet_factory.dart';
import '../../presentation/ui/modals/bottom_sheets/logout/logout_bottom_sheet.dart';
import '../../presentation/ui/screens/app_start_screen.dart';
import '../../presentation/ui/screens/home/home_screen.dart';
import '../../presentation/ui/screens/login/forgot_password.dart';
import '../../presentation/ui/screens/login/hq_login_screen.dart';
import '../../presentation/ui/screens/login/login_screen.dart';
import '../../presentation/ui/screens/login/signup_screen.dart';
import '../../presentation/ui/screens/profile/profile_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppStartScreen,
      children: [
        AutoRoute(
          page: HomeScreen,
        ),
        AutoRoute(page: ProfileScreen),
      ],
    ),
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: HQLoginScreen),
    CustomRoute(
      name: 'LogoutBottomSheetRoute',
      page: LogoutBottomSheet,
      customRouteBuilder: BottomSheetFactory.modalSheetBuilder,
    ),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
