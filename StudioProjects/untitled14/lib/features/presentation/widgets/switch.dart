import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hexcolor/hexcolor.dart';
class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Switch(
            value:isSwitched ,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Colors.grey[300], // Set the color when the switch is ON
            inactiveTrackColor: Colors.grey[300],
            activeTrackColor: HexColor("#3D7E80"), // Set the color of the thumb when the switch is ON
            inactiveThumbColor: HexColor("#3D7E80"),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

          ),

        ],

      );
  }
}
class MySwitchWidget extends StatefulWidget {
  @override
  _MySwitchWidgetState createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  bool switch1Status = false;
  bool switch2Status = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterSwitch(
          width: 50.0,
          height: 25.0,
          toggleSize: 20.0,
          value: switch1Status,
          borderRadius: 30.0,
          padding: 2.0,
          toggleColor: Colors.white,
          toggleBorder: Border.all(
            color: Colors.white,
            width: 5.0,
          ),
          activeColor: Colors.pink,
          inactiveColor: Colors.black38,
          onToggle: (value) {
            setState(() {
              switch1Status = value;
            });
          },
        ),
        FlutterSwitch(
          width: 50.0,
          height: 25.0,
          toggleSize: 20.0,
          value: switch2Status,
          borderRadius: 30.0,
          padding: 2.0,
          toggleColor: Colors.white,
          toggleBorder: Border.all(
            color: Colors.white,
            width: 5.0,
          ),
          activeColor: Colors.pink,
          inactiveColor: Colors.black38,
          onToggle: (value) {
            setState(() {
              switch2Status = value;
            });
          },
        ),
        // Add more FlutterSwitch widgets as needed
      ],
    );
  }
}
