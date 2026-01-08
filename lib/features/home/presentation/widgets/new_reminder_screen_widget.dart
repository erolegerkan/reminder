import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/core/widgets/r_container.dart';
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
  String textValue = "Time";

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          RTextfield(
            textData: "Title", 
            controller: titleController,
          ),
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
                  textValue = "$notificationHourText : $notificationMinuteText";
                });
              } else {
                setState(() {
                  textValue = "Time";
                });
              }
            },
            padding: RNumbers.paddingOptionV2,
            margin: RNumbers.defaultMargin,
            containerChild: Row(
              children: [
                RText(textData: textValue, fontSize: 20),
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
          Spacer(),
          RContainer(
            width: double.infinity,
            containerChild: TextButton(
              onPressed: () {
                if (titleController.text.isNotEmpty && descriptionController.text.isNotEmpty ) {
                  // gerekli metinler girilmedi hatası fırlatma
                }
                if (textValue == "Time") {
                  // zaman boş bırakıldı hatası
                }
              },
              child: RText(textData: 'Save', fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
