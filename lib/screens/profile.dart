import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var value = RangeValues(1, 100);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: theme.onPrimary,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: (value.start) /
                    (1000 / (MediaQuery.of(context).size.width - 40))),
            child: Text(value.start.round().toString()),
          ),
          RangeSlider(
              values: value,
              max: 1000,
              min: 1,
              onChanged: (newValue) {
                print(newValue);
                value = newValue;
                setState(() {});
              }),
          Padding(
            padding: EdgeInsets.only(
                left: (value.end) /
                    (1000 / (MediaQuery.of(context).size.width - 40))),
            child: Text(value.end.round().toString()),
          ),
        ]));
  }
}
