import 'package:calend/selected_dates.dart';
import 'package:flutter/material.dart';
import 'package:calendarro/calendarro.dart';
import 'package:calendarro/date_utils.dart';

class CalendScreen extends StatefulWidget {
  CalendScreen({Key key}) : super(key: key);

  @override
  _CalendScreenState createState() => _CalendScreenState();
}

class _CalendScreenState extends State<CalendScreen> {
  List muldates = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select multiple dates for this month',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Calendarro(
                  onTap: (date) {
                    setState(() {
                      muldates.add(date);
                      print(date);
                    });
                  },
                  displayMode: DisplayMode.MONTHS,
                  selectionMode: SelectionMode.MULTI,
                  startDate: DateUtils.getFirstDayOfCurrentMonth(),
                  endDate: DateUtils.getLastDayOfCurrentMonth()),
            ),
          ),
          RaisedButton(
            child: Text('Go!'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => SlectedDates(
                          seldate: muldates,
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
