import 'package:flutter/material.dart';
import 'package:flutter_future_no_builder/providers/load_screen_provider.dart';
import 'package:flutter_future_no_builder/screens/pantalla_dos.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loadScreenProvider = context.watch<LoadScreenProvider>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  loadScreenProvider.isLoaded=false;
                  loadScreenProvider.isLoading();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PantallaDos()));
                },
                child: const Text("SIGUIENTE PANTALLA")),

          ],
        ),
      ),
    );
  }


}
