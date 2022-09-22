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

  static String getMonthAbbriviation(int month){

    String monthAbbr = "";

    switch(month){
      case 0:
        monthAbbr = "JAN";
        break;
      case 1:
        monthAbbr = "FEB";
        break;
      case 2:
        monthAbbr = "MAR";
        break;
      case 3:
        monthAbbr = "APR";
        break;
      case 4:
        monthAbbr = "MAY";
        break;
      case 5:
        monthAbbr = "JUN";
        break;
      case 6:
        monthAbbr = "JUL";
        break;
      case 7:
        monthAbbr = "AUG";
        break;
      case 8:
        monthAbbr = "SEP";
        break;
      case 9:
        monthAbbr = "OCT";
        break;
      case 10:
        monthAbbr = "NOV";
        break;
      case 11:
        monthAbbr = "DEC";
        break;
    }
    return monthAbbr;
  }

}