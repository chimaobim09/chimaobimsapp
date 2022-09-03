import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class appointmentpage extends StatefulWidget {
  const appointmentpage({Key? key}) : super(key: key);

  @override
  State<appointmentpage> createState() => _appointmentpageState();
}

class _appointmentpageState extends State<appointmentpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is the appointment page"),
    );
  }
}
