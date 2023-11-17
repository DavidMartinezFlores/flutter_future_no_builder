import 'package:flutter/material.dart';
import 'package:flutter_future_no_builder/screens/pantalla_dos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PantallaDos()));
            },
            child: const Text("SIGUIENTE PANTALLA")),
      ),
    );
  }
}