import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({super.key});

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? const LoadedScreen():const Loading();
  }

  isLoading() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    isLoaded=true;
    setState(() {});
  }
}

class LoadedScreen extends StatelessWidget {
  const LoadedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "CARGADO CON EXITO",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
