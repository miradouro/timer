import 'package:flutter/material.dart';
import 'dart:async';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void addTimer() {
    final addSeconds = 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1),(_) => addTimer());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: buildTime(),
    ),
  );

  Widget buildTime() {
    return Text(
      '${duration.inSeconds}',
      style: TextStyle(fontSize: 80),
    );
  }
}