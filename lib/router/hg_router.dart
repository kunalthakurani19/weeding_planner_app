// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart'
//     show GoRouter, ShellRoute, GoRouterState, GoRoute;
// import 'package:happy_grocers/datamodels/user.dart';
// import 'package:happy_grocers/presentation/pages/coupan_deatail_screen.dart';
// import 'package:happy_grocers/presentation/pages/delivery_date_screen.dart';
// import 'package:happy_grocers/presentation/pages/billing_info_screen.dart';
// import 'package:happy_grocers/presentation/pages/delivery_address_screen.dart';
// import 'package:happy_grocers/presentation/pages/my_cart_screen.dart';
// import 'package:happy_grocers/presentation/pages/home_screen/home_screen.dart';
// import 'package:happy_grocers/presentation/pages/notification_screen.dart';
// import 'package:happy_grocers/presentation/pages/payment/payment_method_screen.dart';
// import 'package:happy_grocers/presentation/pages/product_detail_screen.dart';
// import 'package:happy_grocers/presentation/pages/search_screen.dart';
// import 'package:happy_grocers/presentation/pages/setting_screen.dart';
// import 'package:happy_grocers/router/navigation_observer.dart';
// import 'package:happy_grocers/router/hg_auth_router.dart';
// import 'package:happy_grocers/router/hg_route.dart';
// import 'package:happy_grocers/router/hg_transition_page.dart';

// import '../utils/local_storage/storage_manager.dart';

// class HGRouter {
//   static final rootNavigatorKey = GlobalKey<NavigatorState>();
//   static final shellNavigatorKey = GlobalKey<NavigatorState>();

//   static GoRouter getRouter() {
//     final router = GoRouter(
//       navigatorKey: rootNavigatorKey,
//       initialLocation: HGRoute.splashRoutePath,
//       routes: [
//         HGAuthRouter.getSplashRoute(),
//         HGAuthRouter.getWelcomeRoute(),
//         HGAuthRouter.getLoginrRoute(),
//         HGAuthRouter.getSignUpRoute(),
//         HGAuthRouter.getForgotPasswordRoute(),
//         HGAuthRouter.verifyCodeScreen(),
//         ShellRoute(
//           observers: [NavigationObserver()],
//           navigatorKey: shellNavigatorKey,
//           builder: (context, state, child) {
//             return child;
//           },
//           routes: [
//             getHomeRoute(),
//             getProductDetailRoute(),
//             getSearchRoute(),
//             getMyCartRoute(),
//             getSettingRoute(),
//             getNotificationRoute(),
//             getBillingInfoRoute(),
//             getDeliveryAddressRoute(),
//             getDeliveryDateRoute(),
//             getCoupanDetailRoute(),
//             getPaymentMethodRoute()

//             // getEventDetailRoute(),
//             // getTicketListtingRoute(),
//             // getAttendeeDetailRoute(),
//             // getPaymentOptionRoute(),
//             // getCreditDebitDetailsRoute(),
//             // getThankYouMessageRoute()
//           ],
//         ),
//       ],
//       redirect: (context, state) {
//         // return state.namedLocation(HGRoute.homeRoute);
//         LoginUser? userData = StorageManager.getInstance().getLoginUser();
//         if (userData == null &&
//             (state.location != HGRoute.forgotPasswordRoutePath &&
//                 state.location != HGRoute.welcomeRoutePath &&
//                 state.location != HGRoute.loginRoutePath &&
//                 state.location != HGRoute.registerRoutePath &&
//                 state.location != HGRoute.signUpRoutePath &&
//                 state.location != HGRoute.verifyCodePath &&
//                 state.location != HGRoute.newPasswordRoutePath)) {
//           return state.namedLocation(HGRoute.welcomeRoute);
//         } else if (userData != null &&
//             (state.location == HGRoute.splashRoutePath ||
//                 state.location == HGRoute.forgotPasswordRoutePath ||
//                 state.location == HGRoute.welcomeRoutePath ||
//                 state.location == HGRoute.loginRoutePath ||
//                 state.location == HGRoute.signUpRoutePath ||
//                 state.location == HGRoute.verifyCodePath ||
//                 state.location == HGRoute.registerRoutePath ||
//                 state.location == HGRoute.newPasswordRoutePath)) {
//           return state.namedLocation(HGRoute.homeRoute);
//         } else {
//           return null;
//         }
//       },
//       debugLogDiagnostics: kDebugMode,
//     );
//     return router;
//   }

//   static GoRoute getHomeRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.homeRoute,
//       path: HGRoute.homeRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const HomeScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getProductDetailRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.productDetailRoute,
//       path: HGRoute.productDetailRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const ProductDetail(),
//         );
//       },
//     );
//   }

//   static GoRoute getSearchRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.searchRoute,
//       path: HGRoute.searchRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const SearchScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getMyCartRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.myCartRoute,
//       path: HGRoute.myCartRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const MyCartScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getSettingRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.settingRoute,
//       path: HGRoute.settingRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const SettingScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getNotificationRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.notificationRoute,
//       path: HGRoute.notificationRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const NotificationScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getBillingInfoRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.billingInfoRoute,
//       path: HGRoute.billingInfoRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const BillingInfoScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getDeliveryAddressRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.deliveryAddressRoute,
//       path: HGRoute.deliveryAddressRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const DeliveryAddressScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getDeliveryDateRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.deliveryDateRoute,
//       path: HGRoute.deliveryDateRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const DeliveryDateScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getCoupanDetailRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.coupanDetailRoute,
//       path: HGRoute.coupanDetailRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const CoupanDetailScreen(),
//         );
//       },
//     );
//   }

//   static GoRoute getPaymentMethodRoute() {
//     return GoRoute(
//       parentNavigatorKey: shellNavigatorKey,
//       name: HGRoute.paymentMethodRoute,
//       path: HGRoute.paymentMethodRoutePath,
//       pageBuilder: (BuildContext context, GoRouterState state) {
//         return HGTransitionPage(
//           state: state,
//           key: state.pageKey,
//           restorationId: state.pageKey.value,
//           name: state.fullPath,
//           child: const PaymentMethodScreen(),
//         );
//       },
//     );
//   }

//   // static GoRoute getEventDetailRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.eventDetailRoute,
//   //     path: WDMRoute.eventDetailRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: EventsDetailScreen(
//   //           eventId: state.queryParameters['eventId'] ?? '',
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }

//   // static GoRoute getTicketListtingRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.ticketListingRoute,
//   //     path: WDMRoute.ticketListingRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: const EventTicketListing(),
//   //       );
//   //     },
//   //   );
//   // }

//   // static GoRoute getAttendeeDetailRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.attendeDetailRoute,
//   //     path: WDMRoute.attendeDetailRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: const AttendeDetailsScreen(),
//   //       );
//   //     },
//   //   );
//   // }

//   // static GoRoute getPaymentOptionRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.paymentOptionRoute,
//   //     path: WDMRoute.paymentOptionRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: const PaymentOptionScreen(),
//   //       );
//   //     },
//   //   );
//   // }

//   // static GoRoute getCreditDebitDetailsRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.creditDebitDetailsRoute,
//   //     path: WDMRoute.creditDebitDetailsRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: const CreditDebitDetailScreen(),
//   //       );
//   //     },
//   //   );
//   // }

//   // static GoRoute getThankYouMessageRoute() {
//   //   return GoRoute(
//   //     parentNavigatorKey: shellNavigatorKey,
//   //     name: WDMRoute.thankYouMessageRoute,
//   //     path: WDMRoute.thankYouMessageRoutePath,
//   //     pageBuilder: (BuildContext context, GoRouterState state) {
//   //       return HGTransitionPage(
//   //         state: state,
//   //         key: state.pageKey,
//   //         restorationId: state.pageKey.value,
//   //         name: state.fullPath,
//   //         child: const ThankYouMessageScreen(),
//   //       );
//   //     },
//   //   );
//   // }
// }
