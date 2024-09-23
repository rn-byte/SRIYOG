import 'package:flutter/material.dart';
import 'widgets/contact_appbar.dart';

class SpContactScreen extends StatelessWidget {
  const SpContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SpContactAppBar(),
    );
  }
}
