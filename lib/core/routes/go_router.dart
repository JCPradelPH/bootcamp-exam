// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');

// Widget _routeAndHideSnackbar(BuildContext context, Widget child) {
//   ScaffoldMessenger.of(context).hideCurrentSnackBar();
//   return child;
// }

// class RoutePath {
//   static const String loginScreen = '/login';
//   static const String pipelineScreen = '/pipeline';
  
// }

// GoRoute TransitionGoRoute({
//   required String path,
//   required Widget Function(BuildContext, GoRouterState) builder,
//   Duration? transitionDuration,
//   required TransitionType transitionType,
// }) =>
//     GoRoute(
//       path: path,
//       pageBuilder: (context, state) => CustomTransitionPage<void>(
//         key: state.pageKey,
//         transitionDuration: transitionDuration ??
//             (transitionType == TransitionType.fade
//                 ? const Duration(milliseconds: 300)
//                 : const Duration(milliseconds: 400)),
//         child: builder(context, state),
//         transitionsBuilder: (context, animation, secondaryAnimation, child) =>
//             getTransition(
//           kIsWeb ? TransitionType.fade : transitionType,
//           animation,
//           child,
//         ),
//       ),
//     );

// Widget getTransition(
//   TransitionType type,
//   Animation<double> animation,
//   Widget child,
// ) {
//   return switch (type) {
//     TransitionType.fade => _fadeTransition(animation, child),
//     TransitionType.slideHorizontal => _slideTransition(animation, child)
//   };
// }

// FadeTransition _fadeTransition(Animation<double> animation, Widget child) {
//   return FadeTransition(
//     opacity: CurveTween(curve: Curves.easeIn).animate(animation),
//     child: child,
//   );
// }

// SlideTransition _slideTransition(Animation<double> animation, Widget child) {
//   const beginOffset = Offset(1.0, 0.0);
//   const endOffset = Offset.zero;
//   var slideAnimation = Tween<Offset>(
//     begin: beginOffset,
//     end: endOffset,
//   ).animate(animation);
//   return SlideTransition(
//     position: slideAnimation,
//     child: child,
//   );
// }

// enum TransitionType {
//   fade,
//   slideHorizontal,
// }

// final GoRouter goRouter = GoRouter(
//   navigatorKey: _rootNavigatorKey,
//   initialLocation: RoutePath.loginScreen,
//   routes: <RouteBase>[
//     TransitionGoRoute(
//       path: RoutePath.loginScreen,
//       transitionType: TransitionType.fade,
//       builder: (BuildContext context, GoRouterState state) {
//         final err = state.extra as String?;
//         return _routeAndHideSnackbar(
//           context,
//           BlocProvider(
//             create: (context) => serviceLocator<AuthBloc>()
//               ..add(
//                 CheckUserLoggedIn(),
//               ),
//             child: LoginScreen(
//               errorMessage: err,
//             ),
//           ),
//         );
//       },
//     ),
//     TransitionGoRoute(
//       path: RoutePath.pipelineScreen,
//       transitionType: TransitionType.fade,
//       builder: (BuildContext context, GoRouterState state) {
//         return _routeAndHideSnackbar(
//           context,
//           BlocProvider(
//             create: (context) => serviceLocator<PipelineBloc>(),
//             child: const PipelineScreen(),
//           ),
//         );
//       },
//     ),
//   ],
// );
