import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class SpGridLayout extends StatelessWidget {
  const SpGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 100,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: SpSizes.gridViewSpacing,
        crossAxisSpacing: SpSizes.gridViewSpacing,
        crossAxisCount: 5,
      ),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }
}
