import 'package:flutter/material.dart';
import 'package:flutter_future_no_builder/providers/load_screen_provider.dart';
import 'package:provider/provider.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({super.key});

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  @override
  Widget build(BuildContext context) {
    return const LoadedScreen();
  }
}
class LoadedScreen extends StatelessWidget {
  const LoadedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loadScreenProvider = context.watch<LoadScreenProvider>();
    return  Scaffold(
      body: Center(
          child: loadScreenProvider.isLoaded ? const Text(
        "CARGADO CON EXITO",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ): const CircularProgressIndicator()),
    );
  }
}
