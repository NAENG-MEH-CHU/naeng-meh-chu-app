import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:table_calendar/table_calendar.dart';

class NaengMehChuCalender extends ConsumerStatefulWidget {
  final DateTime? lastDay;

  NaengMehChuCalender({super.key, DateTime? lastDay})
      : lastDay = lastDay ?? DateTime.now();

  @override
  ConsumerState createState() => _NaengMehChuCalenderState();
}

class _NaengMehChuCalenderState extends ConsumerState<NaengMehChuCalender> {
  DateTime? _selectedDay;

  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Future<void> selectDate(BuildContext context) async {
      DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: _selectedDay,
          firstDate: DateTime.utc(2024, 01, 01),
          lastDate: DateTime.utc(2099, 12, 31),
          initialDatePickerMode: DatePickerMode.year,
          initialEntryMode: DatePickerEntryMode.calendarOnly);

      if (selectedDate != null) {
        setState(() {
          _selectedDay = selectedDate;
          _focusedDay = selectedDate;
        });
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2024, 01, 01),
        lastDay: DateTime.utc(2099, 12, 31),
        locale: 'ko_KR',
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        onHeaderTapped: (dateTime) => selectDate(context),
        headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            leftChevronVisible: false,
            rightChevronVisible: false,
            titleCentered: true,
            titleTextStyle: NaengMehChuThemeTextStyle.gray1Medium16,
            headerMargin: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: NaengMehChuThemeColor.pink6,
            )),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: NaengMehChuThemeTextStyle.gray1Medium16,
          defaultTextStyle: NaengMehChuThemeTextStyle.gray1Medium16,
          selectedDecoration: BoxDecoration(
            color: NaengMehChuThemeColor.pink6,
            shape: BoxShape.circle,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${day.day}',
                  style: NaengMehChuThemeTextStyle.gray1Medium16,
                ),
              ),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return Container(
              decoration: const BoxDecoration(
                color: NaengMehChuThemeColor.pink1,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(6.0),
              alignment: Alignment.center,
              child: Text(
                '${day.day}',
                style: NaengMehChuThemeTextStyle.whiteMedium15,
              ),
            );
          },
          todayBuilder: (context, day, focusedDay) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${day.day}',
                  style: NaengMehChuThemeTextStyle.gray1Medium16,
                ),
              ),
            );
          },
          outsideBuilder: (context, day, focusedDay) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${day.day}',
                  style: NaengMehChuThemeTextStyle.gray1Medium16
                      .copyWith(color: Colors.grey),
                ),
              ),
            );
          },
          dowBuilder: (context, day) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Text(
                  DateFormat.E('ko_KR').format(day),
                  style: NaengMehChuThemeTextStyle.gray1Medium16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
