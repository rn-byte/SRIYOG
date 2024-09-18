import 'package:flutter/material.dart';

class SpHomeBanner extends StatelessWidget {
  const SpHomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: double.infinity,
          child: Image.asset(
            'assets/images/banner/image.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
