import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';
import 'Pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _navigatorKey = GlobalKey<NavigatorState>();
  final String projectId = "swakulasalimatrimony-ayj79sc";
  final String secretKey = "iJ0tjthk9KPFx8F7Xih6tXCyWQxrPr9Y";
  final AdaptiveThemeMode? savedThemeMode;
  MyApp({Key? key, this.savedThemeMode,}) : super(key: key);
  bool isMaterial = true;

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: projectId,
      secret: secretKey,
      navigatorKey: _navigatorKey,
      options: WiredashOptionsData(
      ),
      theme: WiredashThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan,
        secondaryColor: Colors.indigo,
      ),
      child: AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          accentColor: Colors.black,
        ),
        initial: savedThemeMode ?? AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
          title: 'Swakulasali Matrimony',
          theme: theme,
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme,
          home: HomePage(),
        ),
      ),
    );
  }
}


