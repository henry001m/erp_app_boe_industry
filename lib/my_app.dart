import 'package:auto_route/auto_route.dart';
import 'package:erp_app_boe_industry/models/auth_provider.dart';
import 'package:erp_app_boe_industry/routes/route.dart';
import 'package:erp_app_boe_industry/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => AuthProvider(),
        ),
        /*ChangeNotifierProvider(
          create: (_) => UsersProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoriesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CityProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TypeCostCenterProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CostCenterProvider(),
        ),*/
      ],
      child: MyProyApp(),
    );
  }
}

class MyProyApp extends StatelessWidget {
  const MyProyApp({
    Key? key,
  })  : super(key: key);


  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return MaterialApp(
                scaffoldMessengerKey: NotificationsService.messengerKey,
                debugShowCheckedModeBanner: false,
                routes: Routes.getAll(),
                onGenerateRoute: Routes.getRouteGenerate,
                builder: (_, widget) {
                  return Material(
                    child: Column(
                      children: [
                        Expanded(
                          child: widget!,
                        ),
                      ],
                    ),
                  );
                },
              );
  }
}
