import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/widgets/display_white_text.dart';
import 'package:to_do_app/widgets/select_date_time.dart';

import '../widgets/common_text_field.dart';
import '../widgets/select_category.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      CreateTaskScreen();

  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add new task'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonTextField(
              tile: 'Task title',
              hintText: 'Enter task title',
            ),
            const Gap(16),
            const SelectCategory(),
            const Gap(16),
            const SelectDateTime(),
            const Gap(16),
            const CommonTextField(
              tile: 'Note',
              hintText: 'Task note',
              maxLines: 6,
            ),
            const Gap(60),
            ElevatedButton(
              onPressed: () {},
              child: const DisplayWhiteText(text: 'Save'),
            )
          ],
        ),
      ),
    );
  }
}
