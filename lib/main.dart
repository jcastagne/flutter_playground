import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_app/ui/providers/theme_provider.dart';
import 'package:universal_app/ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
        create: (_) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, _) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: themeProvider.getTheme(),
              home: MyHomePage(title: 'Flutter Demo Home Page'),
            );
          },
        ));
  }
}
