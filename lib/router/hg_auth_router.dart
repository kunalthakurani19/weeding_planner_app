// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/forgot_password_screen.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/login_screen.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/signup/sign_up_screen.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/verify_code_screen.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/welcome_screen.dart';
// import 'package:happy_grocers/auth_module/presentation/pages/splash_screen.dart';
// import 'package:happy_grocers/router/hg_route.dart';
// import 'package:happy_grocers/router/hg_router.dart';
// import 'package:happy_grocers/router/hg_transition_page.dart';

// class HGAuthRouter {
//   static GoRoute getSplashRoute() {
//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.splashRoute,
//       path: HGRoute.splashRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child: const ScreenScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getWelcomeRoute() {
//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.welcomeRoute,
//       path: HGRoute.welcomeRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child: const WelcomeScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getLoginrRoute() {
//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.loginRoute,
//       path: HGRoute.loginRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child: const LoginScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getSignUpRoute() {

//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.signUpRoute,
//       path: HGRoute.signUpRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child:  const SignupScreen(
//             // currentStep: curre,
//             ),
//         );
//       },
//     );
//   }

//   static GoRoute getForgotPasswordRoute() {
//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.forgotPasswordRoute,
//       path: HGRoute.forgotPasswordRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child: const ForgotPasswordScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute verifyCodeScreen() {
//     return GoRoute(
//       parentNavigatorKey: HGRouter.rootNavigatorKey,
//       name: HGRoute.verifyCodeRoute,
//       path: HGRoute.verifyCodePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           name: state.fullPath,
//           child: const VerifyCodeScreen(),
//         );
//       },
//     );
//   }
// }
