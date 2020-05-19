import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SlectedDates extends StatefulWidget {
  final List seldate;
  SlectedDates({
    Key key,
    @required this.seldate,
  }) : super(key: key);

  @override
  _SlectedDatesState createState() => _SlectedDatesState();
}

class _SlectedDatesState extends State<SlectedDates> {
  List l = [];
  List finalval = [];
  @override
  Widget build(BuildContext context) {
    l = widget.seldate;
    for (var i = 0; i < widget.seldate.length; i++) {
      var formattedDate = DateFormat.yMMMd().format(l[i]);

      finalval.add(formattedDate);
      //print(formattedDate);
    }
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: finalval.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(finalval[index]),
            );
          }),
    );
  }
}
