import 'package:flutter/material.dart';

class SliderUse extends StatefulWidget {
  const SliderUse({super.key});

  @override
  State<SliderUse> createState() => _SliderUseState();
}

class _SliderUseState extends State<SliderUse> {
  double _value = 0;

  RangeValues _rangeValues = RangeValues(0, 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SliderUse')),
      body: Container(
        child: Column(
          spacing: 10,
          children: [
            Text(
              'Slider use',
              style: TextStyle(fontSize: 30),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_value),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 40,
              child: Slider(
                value: _value,
                max: 50,
                min: 0,
                divisions: 50,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                  print(value);
                },
                thumbColor: Colors.orange,
                activeColor: Colors.orange,
                inactiveColor: Colors.grey,
                label: _value.round().toString(),
              ),
            ),
            Text(
              'Range Slider',
              style: TextStyle(fontSize: 30),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  valueIndicatorColor: Colors.orange,
                  showValueIndicator: ShowValueIndicator.always,
                  thumbColor: Colors.red,
                  trackHeight: 1,
                  valueIndicatorStrokeColor: Colors.red),
              child: SizedBox(
                height: 60,
                child: RangeSlider(
                  values: _rangeValues,
                  onChanged: (value) {
                    setState(() {
                      _rangeValues = value;
                    });
                  },
                  min: 0,
                  max: 50,
                  // divisions: 50,
                  labels: RangeLabels(
                    _rangeValues.start.round().toString(),
                    _rangeValues.end.round().toString(),
                  ),
                  activeColor: Colors.orange,
                  inactiveColor: Colors.grey,
                ),
              ),
            ),
            Text(
                'Start: ${_rangeValues.start.round().toString()} end: ${_rangeValues.end.round().toString()}')
          ],
        ),
      ),
    );
  }
}
