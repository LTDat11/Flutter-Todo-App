import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_app/data/data.dart';
import 'package:to_do_app/utils/extensions.dart';
import 'package:to_do_app/widgets/common_container.dart';
import 'package:to_do_app/widgets/display_list_of_tasks.dart';
import 'package:to_do_app/widgets/display_white_text.dart';

import '../utils/task_categories.dart';

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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "November 2024",
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: "My Todo List",
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: deviceSize.width,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTasks(tasks: const [
                      Task(
                          title: 'title 1',
                          time: '11:00',
                          date: 'Nov, 23',
                          note: 'note',
                          isCompleted: false,
                          category: TaskCategories.shopping),
                      Task(
                          title: 'title 2',
                          time: '11:00',
                          date: 'Nov, 23',
                          note: 'note',
                          isCompleted: false,
                          category: TaskCategories.education),
                    ]),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                            title: 'title 1',
                            time: '11:00',
                            date: 'Nov, 23',
                            note: 'note',
                            isCompleted: true,
                            category: TaskCategories.personal),
                        Task(
                            title: 'title 2',
                            time: '11:00',
                            date: 'Nov, 23',
                            note: 'note',
                            isCompleted: true,
                            category: TaskCategories.work),
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: "Add New Task"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
