import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/core/providers/screen_provider.dart';
import 'package:reminder/core/widgets/r_container.dart';
import 'package:reminder/core/widgets/r_dialog.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';
import 'package:reminder/core/widgets/r_textfield.dart';

class NewReminderScreenWidget extends StatefulWidget {
  const NewReminderScreenWidget({super.key});

  @override
  State<NewReminderScreenWidget> createState() =>
      _NewReminderScreenWidgetState();
}

class _NewReminderScreenWidgetState extends State<NewReminderScreenWidget> {
  bool isSwitchTurnedOn = false;
  TimeOfDay? notificationTime;
  DateTime? notificationDate;
  String timeTextValue = "Time";
  String dateTextValue = "Date";

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          RTextfield(textData: "Title", controller: titleController),
          RTextfield(
            textData: "Description",
            controller: descriptionController,
          ),
          RContainer(
            onPressed: () async {
              notificationTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (notificationTime != null) {
                String notificationMinuteText = notificationTime!.minute
                    .toString();
                String notificationHourText = notificationTime!.hour.toString();
                if (notificationTime!.minute < 10) {
                  notificationMinuteText = "0${notificationTime!.minute}";
                }
                if (notificationTime!.hour < 10) {
                  notificationHourText = "0${notificationTime!.hour}";
                }
                setState(() {
                  timeTextValue =
                      "$notificationHourText : $notificationMinuteText";
                });
              } else {
                setState(() {
                  timeTextValue = "Time";
                });
              }
            },
            padding: RNumbers.paddingOptionV2,
            margin: RNumbers.defaultMargin,
            containerChild: Row(
              children: [
                RText(textData: timeTextValue, fontSize: 20),
                Spacer(),
                RIcon(icon: Icons.timer_outlined, iconColor: RColors.darkTitle),
              ],
            ),
          ),
          RContainer(
            isBorderNeeded: false,
            containerChild: Row(
              children: [
                RText(textData: "Recursive Notification", fontSize: 20),
                Spacer(),
                Switch(
                  value: isSwitchTurnedOn,
                  onChanged: (value) {
                    setState(() {
                      isSwitchTurnedOn = value;
                    });
                  },
                ),
              ],
            ),
          ),
          if (isSwitchTurnedOn)
            RContainer(
              onPressed: () async {
                notificationDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.utc(2099, DateTime.december, 31),
                );
              },
              padding: RNumbers.paddingOptionV2,
              margin: RNumbers.defaultMargin,
              containerChild: Row(
                children: [
                  RText(textData: dateTextValue, fontSize: 20),
                  Spacer(),
                  RIcon(
                    icon: Icons.date_range_outlined,
                    iconColor: RColors.darkTitle,
                  ),
                ],
              ),
            ),

          Spacer(),
          Consumer<ScreenProvider>(
            builder: (context, screenProviderModel, child) => RContainer(
              width: double.infinity,
              containerChild: TextButton(
                onPressed: () {
                  if (titleController.text.isNotEmpty &&
                      descriptionController.text.isNotEmpty) {
                    // textfields cannot be empty
                  }
                  if (timeTextValue == "Time") {
                    // time cannot be empty
                  }
                  if (isSwitchTurnedOn && dateTextValue == "Date") {
                    showDialog(
                      context: context,
                      builder: (builder) {
                        return RDialog(
                          alertDialogText: "Date fields cannot be empty",
                          alertDialogTitle: "Warning",
                          alertDialogIcon: Icons.warning_amber_outlined,
                          alertDialogButtonTexts: ["OK","Cancel"],
                          alertDialogButtonIcons: [Icons.check, Icons.close],
                        );
                      },
                    );
                  }
                  screenProviderModel.changeScreenStatus(ReminderScreens.home);
                },
                child: RText(textData: 'Save', fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
