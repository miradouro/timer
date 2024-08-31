import 'package:flutter/material.dart';
import './first_page.dart';
import './second_page.dart';
import './third_page.dart';
import './fourth_page.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TabBar Tutorial",
        home:MyHomePage()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
          centerTitle: true,
          bottom: const TabBar(
              tabs: [
                Tab(text: "Tab 1",icon: Icon(Icons.home)),
                Tab(text: "Tab 2",icon: Icon(Icons.home)),
                Tab(text: "Tab 3",icon: Icon(Icons.home)),
                Tab(text: "Tab 4",icon: Icon(Icons.home)),
              ]
          ),
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
            FourthPage(),
          ],
        ),
      ),
    );
  }
}