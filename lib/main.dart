import 'package:flutter/material.dart';
import 'package:huntington/ui/screens/landing_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(HuntingtonBank());
}

class HuntingtonBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
      },
    );
  }
}
