import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soff_cricket_hybrid/utils/datetime_utils/datetime_util.dart';

Widget machineHoursRow(String date, String type, double hours) {

  final DateTime formattedDate = DateTime.parse(date);

  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.only(left: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 72,
              height: 72,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    formattedDate.year.toString(),
                    style: const TextStyle(
                        color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      DateTimeUtil.getMonthAbbriviation(formattedDate.month).toLowerCase(),
                      style: const TextStyle(
                          color: Color.fromRGBO(97, 97, 97, 1),
                          fontSize: 14
                      ),
                    ),
                  ),
                  Text(
                    formattedDate.day.toString(),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(97, 97, 97, 1)),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(210, 210, 210, 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(alignment: Alignment.center,
              // child: machineType(type)
            child: Text(type),
          ),
        ),
        Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Row(
          children: [
              Text(
                hours.toString(),
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Hours',
                ),
              ),
          ],
        ),
            ))
      ],
    ),
  );
}

Widget pointsTableRaw(String date, String purpose, String points) {

  // initializeDateFormatting();
  String date = "Wed Sep 21 16:20:24 EST-0500 2022";
  DateFormat formatter = DateFormat("EEE MMM dd HH:mm:ss zXXX yyyy");
  DateTime formattedDateTime = formatter.parse(date);

  // DateTime tempDate =Intl.withLocale('en', () => new DateFormat("EEE MMM dd HH:mm:ss zzzz yyyy").parseUTC(date));
  print("Tes");
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.only(left: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 70,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2022',
                    style: const TextStyle(
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      DateTimeUtil.getMonthAbbriviation(1).toLowerCase(),
                      style: const TextStyle(
                          color: Color.fromRGBO(97, 97, 97, 1),
                          fontSize: 14
                      ),
                    ),
                  ),
                  Text(
                    1.toString(),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(97, 97, 97, 1)),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(210, 210, 210, 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(alignment: Alignment.center, child: Text(purpose)),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              points,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
