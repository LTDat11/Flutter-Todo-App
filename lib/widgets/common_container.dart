import 'package:flutter/material.dart';
import 'package:to_do_app/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});

  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.screenSize;
    return Container(
      width: deviceSize.width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.colorScheme.primaryContainer,
      ),
      child: child,
    );
  }
}
