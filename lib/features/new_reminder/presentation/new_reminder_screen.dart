import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer.dart';
import 'package:reminder/core/widgets/r_text.dart';
import 'package:reminder/core/widgets/r_textfield.dart';

class NewReminderScreen extends StatelessWidget {
  const NewReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(),
      drawer: RDrawer(),
      backgroundColor: RColors.darkBackground,
      body: SafeArea(
        child: Column(
          children: [
            RTextfield(textData: "Title"),
            RTextfield(textData: "Description"),
          ],
        ),
      ),
    );
  }
}
