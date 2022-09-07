class DateTimeUtil {

  static bool isTimeExpired(String time) {
    DateTime currentDateTime = DateTime.now();
    DateTime comparableTime = DateTime.parse(time);
    return currentDateTime.compareTo(comparableTime) > 0 ? true : false;
  }

  static DateTime addTimeToCurrentTime(int time) {
    DateTime currentDateTime = DateTime.now();
    DateTime timeUpdated = currentDateTime.add(Duration(minutes: time));
    return timeUpdated;
  }

}