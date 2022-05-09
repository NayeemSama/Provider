import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/theme_provider.dart';
import 'package:provider_test/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) => MaterialApp(
            title: 'Flutter Provider Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              appBarTheme: AppBarTheme(brightness: Brightness.dark),
            ),
            home: HomeView(),
          ),
        ),
      ),
    );
  }
}

