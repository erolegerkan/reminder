enum ReminderScreens {
  home,
  newReminder,
  settings,
  feedback,
  policies,
  aboutUs;

  static ReminderScreens fromString(String screenName){
    return ReminderScreens.values.firstWhere(
      (e) => e.name == screenName
    );
  }
}