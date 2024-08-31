import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularCountDownTimer(
                controller: _controller,
                autoStart: false,
                width: 200,
                height: 200,
                duration: 10,
                fillColor: Colors.blue,
                ringColor: Colors.red,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (){
                    _controller.start();
                  },
                  child: const Text('Start'),
                ),
                ElevatedButton(
                  onPressed: (){
                    _controller.pause();
                  },
                  child: const Text('Pause'),
                ),
                ElevatedButton(
                  onPressed: (){
                    _controller.resume();
                  },
                  child: const Text('Resume'),
                ),
                ElevatedButton(
                  onPressed: (){
                    _controller.reset();
                  },
                  child: const Text('Restart'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
