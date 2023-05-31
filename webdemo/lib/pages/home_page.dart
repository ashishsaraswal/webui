import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webdemo/pages/second_widget.dart';
import 'package:webdemo/pages/third_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              extended: isExpanded,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text('chart'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.pie_chart),
                  label: Text('pie'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.chat),
                  label: Text('chat'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('setting'),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 120),
                  icon: Icon(Icons.person),
                  label: Text('person'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.logout),
                  label: Text('logout'),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.white24,
              child: Column(
                children: [
                  second(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.white10,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Third(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
