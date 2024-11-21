import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_app/utils/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.screenSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nov ..., 2024",
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: colors.surface,
                        fontSize: 20,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      "My Todo List",
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: colors.surface,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
