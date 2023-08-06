import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/domain/logic/window_size.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/error_handler_page.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/home_page.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/property_portfolio/property_operations/add_property.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/property_portfolio/property_operations/edit_property.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/property_portfolio/property_operations/view_property.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/sales_team/add_salesman.dart';
import 'package:apart_flow_desktop/presentation/screens/before.log/welcome_screen.dart';
import 'package:apart_flow_desktop/presentation/screens/before.log/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  windowSizeAndName(size: const Size(1600, 600), name: meta.appName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeSettings(),
      child: Consumer<ThemeSettings>(
        builder: (context, themeSettings, child) => MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: ThemeData(
            useMaterial3: false,
            brightness:
                themeSettings.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/welcome': (context) => const WelcomeScreen(),
            '/home': (context) => const HomePage(),
            '/add_single_property': (context) =>
                const AddProperty(isSingleProperty: true),
            '/add_compound_property': (context) =>
                const AddProperty(isSingleProperty: false),
            '/edit_property': (context) => const EditProperty(),
            '/view_property': (context) => const ViewProperty(),
            '/add_salesman': (context) => const AddSalesMan(),
            '/error_page': (context) => ErrorHandlerPage()
          },
        ),
      ),
    );
  }
}
