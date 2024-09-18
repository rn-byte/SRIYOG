import 'package:flutter/material.dart';
import 'package:sriyog_app/common/widgets/appbar/appbar.dart';

class SpContactScreen extends StatelessWidget {
  const SpContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SpAppBar(
        title: Text('Sriyog | Kathmandu Contact'),
      ),
    );
  }
}
