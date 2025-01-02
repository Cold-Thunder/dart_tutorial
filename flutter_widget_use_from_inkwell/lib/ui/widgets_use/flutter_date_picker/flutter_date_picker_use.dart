import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';

class FlutterDatePickerUse extends StatefulWidget {
  const FlutterDatePickerUse({super.key});

  @override
  State<FlutterDatePickerUse> createState() => _FlutterDatePickerUseState();
}

class _FlutterDatePickerUseState extends State<FlutterDatePickerUse> {
  DateTime? date;
  int? year;
  int? day;
  int? month;

  TimeOfDay? time;
  int? hour;
  int? minutes;


  void datePicker()async{
    DateTime? picker = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
      builder: (context, child){
          if(child == null) return const SizedBox.shrink();

          return Theme(
          data: ThemeData().copyWith(
              colorScheme: ColorScheme.dark(
                  primary: Colors.white,
                onPrimary: Colors.red,
                surface: Colors.blue,
                onSurface: Colors.white,
                surfaceContainerHigh: Colors.purple
              ),
            dialogBackgroundColor: Colors.blueAccent
          ),
        child: child
      );
        }
    );

    if(picker != null){
      setState(() {
        date = picker;
        year = picker.year;
        month = picker.month;
        day = picker.day;
      });
    }

  }

  void timePicker()async{
    TimeOfDay? timePick = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
       builder: (context, child){
          if(child == null) return const SizedBox.shrink();
          return Theme(
              data: ThemeData(
                colorScheme: ColorScheme.dark(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                  secondary: Colors.deepOrange,
                  onSecondary: Colors.white
                ),
                dialogBackgroundColor: Colors.blueAccent
              ),
              child: child);
       }
    );

    setState((){
      time = timePick;
      hour = timePick?.hour;
      minutes = timePick?.minute;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker')
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
              Text(date != null
                  ? "${year.toString()}/ ${month.toString().padLeft(2) }"
                  "/ ${day.toString().padLeft(2)}"
                  : 'Show Date', style: TextStyles.flagHeading,),
            ElevatedButton(
              onPressed: datePicker,
              child: Text('Pick Date')
            ),
            Text(time != null ?
                  "${hour.toString().padLeft(2)}"
                      ": ${minutes.toString().padLeft(2)}"
                : 'Time', style: TextStyles.flagHeading),
            ElevatedButton(
              onPressed: timePicker,
              child: Text('Pick Time')
            )
          ],
        ),
      ),
    );
  }
}
