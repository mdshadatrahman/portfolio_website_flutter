import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/home/home_provider.dart';
import 'package:portfolio_website/routes/app_route_config.dart';
import 'package:provider/provider.dart';

double height = 0;
double width = 0;
const double workWidth = 1000;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes().router.routeInformationProvider,
      routeInformationParser: AppRoutes().router.routeInformationParser,
      routerDelegate: AppRoutes().router.routerDelegate,
    );
  }
}
