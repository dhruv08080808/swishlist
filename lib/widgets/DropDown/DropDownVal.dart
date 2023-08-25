import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';


class DatePickerWidget extends StatefulWidget {
  final int maximumDate;
  final Function(DateTime) onPop;
  const DatePickerWidget({Key? key, required this.onPop, required this.maximumDate, }) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();
  // DateTime _selectedDate;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      insetPadding: EdgeInsets.all(16),
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: CupertinoDatePicker(
                  dateOrder: DatePickerDateOrder.ymd,
                  mode: CupertinoDatePickerMode.date,
                  minimumYear: 1950,
                  maximumYear: widget.maximumDate,
                  onDateTimeChanged: (val) {
                    setState(() {
                      selectedDate = val;
                      widget.onPop(selectedDate);
                    });
                    // tempPickedDate = dateTime
                  },
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedDate;
                  });
                  Navigator.pop(context);
                  print(selectedDate);
                },
                child: Container(
color: kF7E641,

                  child:Text('OK')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}