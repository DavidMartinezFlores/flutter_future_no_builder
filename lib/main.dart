import 'package:flutter/material.dart';
import 'package:flutter_future_no_builder/providers/load_screen_provider.dart';
import 'package:flutter_future_no_builder/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoadScreenProvider(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}
