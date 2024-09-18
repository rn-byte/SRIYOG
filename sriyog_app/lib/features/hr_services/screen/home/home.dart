import 'package:flutter/material.dart';
import 'package:sriyog_app/common/widgets/appbar/appbar.dart';

class SpHomeScreen extends StatelessWidget {
  const SpHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpAppBar(
        title: Text(
          'Sriyog | Kathmandu',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: false,
      ),
    );
  }
}
