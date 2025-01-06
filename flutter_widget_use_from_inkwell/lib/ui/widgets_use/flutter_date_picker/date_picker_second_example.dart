import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';

class DatePickerSecondExample extends StatefulWidget {
  const DatePickerSecondExample({super.key});

  @override
  State<DatePickerSecondExample> createState() =>
      _DatePickerSecondExampleState();
}

class _DatePickerSecondExampleState extends State<DatePickerSecondExample> {
  String? date;
  TimeOfDay? time;

  datePicker() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime(2050),
    );

    if (selectedDate != null) {
      setState(() {
        date = DateFormat('dd-MM-yyyy').format(selectedDate).toString();
      });
      timePicker();
    }
  }

  timePicker()async{
    TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );

    if(selectedTime != null){
      setState(() {
        time = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Date Picker second')),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Text(date ?? 'Date will be here', style: TextStyles.flagHeading),
              ElevatedButton(
                onPressed: () {
                  datePicker();
                },
                child: Text('Date Picker'),
              ),
              Text(time != null
                  ? '${time?.hourOfPeriod}:${time?.minute.toString().padLeft(2,'0')} ${time?.period.name}'
                  : 'Time will be here', style: TextStyles.flagHeading),
              ElevatedButton(
                onPressed: () {
                  timePicker();
                },
                child: Text('Date Picker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
