import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../containts/utils.dart';
import '../widgets/listviewhome.dart';

class TableEventsExample extends StatefulWidget {
  @override
  _TableEventsExampleState createState() => _TableEventsExampleState();
}

class _TableEventsExampleState extends State<TableEventsExample> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0.5, 0),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              // Use `CalendarStyle` to customize the UI
              outsideDaysVisible: false,
            ),
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: ValueListenableBuilder<List<Event>>(
            valueListenable: _selectedEvents,
            builder: (context, value, _) {
              return ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Card(
                      elevation: 8,
                      color: Colors.white,
                      shadowColor: Colors.black.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Positioned(
                            left: 5,
                            top: 30,
                            child: Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              padding: const EdgeInsets.all(15),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/photos.jpeg'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding:
                                EdgeInsets.only(top: 18, left: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Report",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                                Text("General Report/Logbook",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.3))),
                                Chip(
                                  backgroundColor: Colors.green,
                                  label: Text("Approve",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );

                  // return Container(
                  //   margin: const EdgeInsets.symmetric(
                  //     horizontal: 12.0,
                  //     vertical: 4.0,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(),
                  //     borderRadius: BorderRadius.circular(12.0),
                  //   ),
                  //   child: ListTile(
                  //     onTap: () => print('${value[index]}'),
                  //     title: Text('${value[index]}'),
                  //   ),
                  // );
                },
              );
            },
          ),
        ),
      ],
    );
    // );
  }
}
