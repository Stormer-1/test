import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test/assets/text_styles.dart';


class CalendarPage extends StatefulWidget {
  const CalendarPage({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<DateTime> onChanged;

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime today = DateTime.now();

  void _onSelectedDate(DateTime day, DateTime focusedDay) {
    widget.onChanged(day);
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: TableCalendar(
        locale: "ru_RU",
        selectedDayPredicate: (day) => isSameDay(day, today),
        availableGestures: AvailableGestures.all,
        calendarStyle: CalendarStyle(
          defaultTextStyle: AppTextStyles.s18w500.apply(
            color: const Color(0xff4C4C69),
          ),
          selectedDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xffFF8702).withOpacity(0.55),
          ),
          selectedTextStyle: AppTextStyles.s18w500.apply(
            color: const Color(0xff4C4C69),
          ),
          todayDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xffFF8702).withOpacity(0.22),
          ),
          todayTextStyle: AppTextStyles.s18w500.apply(
            color: const Color(0xff4C4C69),
          ),
        ),
        rowHeight: 40,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleTextStyle: AppTextStyles.s24w700.apply(
            color: const Color(0xff4C4C69),
          ),
        ),
        focusedDay: today,
        firstDay: DateTime.utc(2010, 5, 10),
        lastDay: DateTime.utc(2030, 5, 10),
        onDaySelected: _onSelectedDate,
      ),
    );
  }
}
