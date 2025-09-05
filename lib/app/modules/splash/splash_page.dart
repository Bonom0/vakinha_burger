import 'package:flutter/material.dart';
import 'package:vakinha_burger/app/core/ui/widgets/vakinha_textformfield.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash')),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: VakinhaTextformfield(label: 'Text Form'),
          ),
        ],
      ),
    );
  }
}
