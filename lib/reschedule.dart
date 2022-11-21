import 'package:flutter/material.dart';
import 'package:health_cop/custom_button_widget.dart';
import 'package:health_cop/home_page.dart';
import 'package:table_calendar/table_calendar.dart';

class Reschedule extends StatefulWidget {
  const Reschedule({Key? key}) : super(key: key);

  @override
  State<Reschedule> createState() => _RescheduleState();
}

class _RescheduleState extends State<Reschedule> {
  bool isExpanded = false;
  List<String> morningTime = ["9:00", "9:30", "10:00", "10:30"];
  List<String> afternoonTime = ["12:00", "1:00", "1:30"];
  List<String> eveningTime = ["17:00", "18:30", "19:00", "19:30"];
  String selectedTime = "9:00";
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reschedule"),
        elevation: 0,
        backgroundColor: const Color(0xFFF5F5F5),
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            "Meditation",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color(
                0xFF161B46,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Choose the most suitable day and time among the available ones",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF34405E)),
          ),
          const SizedBox(
            height: 20,
          ),
          TableCalendar(
            calendarFormat:
                isExpanded ? CalendarFormat.month : CalendarFormat.week,
            headerStyle: const HeaderStyle(formatButtonVisible: false),
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: selectedDate,
            onDaySelected: (value, date) {
              setState(() {
                selectedDate = value;
              });
            },
          ),
          Center(
            child: ExpandIcon(
                isExpanded: isExpanded,
                onPressed: (value) {
                  print(value);
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                }),
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Morning",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF34405E),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(morningTime.length,
                    (index) => timerWidget(morningTime[index]))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Noon",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF34405E),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(afternoonTime.length,
                    (index) => timerWidget(afternoonTime[index]))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Evening",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF34405E),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  eveningTime.length,
                  (index) => timerWidget(
                    eveningTime[index],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            );
          })
        ],
      ),
    );
  }

  Widget timerWidget(
    String time, {
    Color color = const Color(
      0xFFF4F5FB,
    ),
  }) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTime = time;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selectedTime == time ? const Color(0xFFD4D9F5) : const Color(0xFFF4F5FB),
          ),
          child: Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
