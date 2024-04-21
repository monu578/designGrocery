import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget{
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat calendarFormat=CalendarFormat.week;
  DateTime focusedate=DateTime.now();
  DateTime? selectday;
  var mydate=DateTime.daysPerWeek;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: TableCalendar(
       firstDay: DateTime(2023),
       lastDay: DateTime(2024),
       focusedDay: focusedate,
       calendarFormat: CalendarFormat.week,
       headerVisible: false,
       startingDayOfWeek: StartingDayOfWeek.monday,
       daysOfWeekStyle: DaysOfWeekStyle(decoration: BoxDecoration(shape: BoxShape.rectangle)),
       calendarStyle: CalendarStyle(
         markersAlignment: Alignment.center,
         tablePadding: EdgeInsets.all(10),
         tableBorder: TableBorder(borderRadius: BorderRadius.circular(10)),
         todayDecoration: BoxDecoration(color:Color(0xFFFEB54D),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10))
       ),




     ),

   );
  }
}