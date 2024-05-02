
import 'package:erp_app_boe_industry/screens/authentication/login/login_one.dart';
import 'package:erp_app_boe_industry/utils/constants/route_list.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => _routes;

  static final Map<String, WidgetBuilder> _routes = {

    RouteList.login: (context) {
      return const LoginScreen();
    },
    
    //RouteList.products: (context) => const ProductsScreen(),
  };

  static Route getRouteGenerate(RouteSettings settings) {
    var routingData = settings.name!;

    switch (routingData) {

      /*case RouteList.productView:
        /// The product detail is ID and storeId
        final arguments = settings.arguments;
        if (arguments is StoreProductDetailArgument) {
          return _buildRoute(
            settings,
            (_) => ProductDetailScreenVariant(id: arguments.pdtId),
          );
        }
        return _errorRoute();*/

      /*case RouteList.profile:
        final data = settings.arguments;
        if (data is TabBarMenuConfig) {
          return _buildRoute(
            settings,
            (_) => SettingScreen(
              settings: data.jsonData['settings'],
              subGeneralSetting: data.jsonData['subGeneralSetting'],
              background: data.jsonData['background'],
              drawerIcon: data.jsonData['drawerIcon'],
              showBackground: data.jsonData['showBackground'],
              cardStyle: data.jsonData['styleItem'],
              settingStyle: data.jsonData['settingStyle'],
              hideUser: data.jsonData['hideUser'] ?? false,
            ),
          );
        }
        return _errorRoute();*/
      default:
        final allRoutes = {
          ...getAll(),
        };
        if (allRoutes.containsKey(settings.name)) {
          return _buildRoute(
            settings,
            allRoutes[settings.name!]!,
          );
        }
        return _errorRoute();
    }
  }

  static WidgetBuilder? getRouteByName(String name) {
    if (_routes.containsKey(name) == false) {
      return _routes[RouteList.login];
    }
    return _routes[name];
  }

  static Route _errorRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Text(message),
        ),
      );
    });
  }

  static PageRouteBuilder _buildRouteFade(
    RouteSettings settings,
    Widget builder,
  ) {
    return _FadedTransitionRoute(
      settings: settings,
      widget: builder,
    );
  }

  static MaterialPageRoute _buildRoute(
      RouteSettings settings, WidgetBuilder builder,
      {bool fullscreenDialog = false}) {
    return MaterialPageRoute(
      settings: settings,
      builder: builder,
      fullscreenDialog: fullscreenDialog,
    );
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget? widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({this.widget, required this.settings})
      : super(
          settings: settings,
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget!;
          },
          transitionDuration: const Duration(milliseconds: 100),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut,
              ),
              child: child,
            );
          },
        );
}
