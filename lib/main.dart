import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hendshake/pages/history_page.dart';
import 'package:hendshake/pages/main_page.dart';
import 'package:hendshake/provider/activity_provider.dart';
import 'package:hendshake/routes/router.dart';
import 'package:hendshake/routes/routes_path.dart';
import 'package:hendshake/services/locator_service.dart';
import 'package:hendshake/services/navigation_service.dart';
import 'package:hendshake/widgets/common_appbar.dart';
import 'package:hendshake/widgets/common_button_widget.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ActivityProvider>(
          create: (context) => locator<ActivityProvider>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hendshake',
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoutes,
        navigatorObservers: [locator<NavigationService>().routeObserver],
        home: MainPage(),
      ),
    );
  }
}
