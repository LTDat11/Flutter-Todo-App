import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_app/screens/home_screen.dart';
import 'package:to_do_app/utils/extensions.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.tile,
    required this.hintText,
    this.controller,
    this.maxLines,
    this.suffixIcon,
    this.readOnly = false,
  });

  final String tile;
  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          tile,
          style: context.textTheme.titleLarge,
        ),
        const Gap(10),
        TextField(
          readOnly: true,
          controller: controller,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
