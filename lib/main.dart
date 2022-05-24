import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomesScreen(),
        'details': (_) => DetailsScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Colors.grey),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
