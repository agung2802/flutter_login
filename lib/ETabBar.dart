import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget {
  ETabBar({super.key});

  List<Tab> tabs=[
    const Tab(text: 'Tab 1'),
    const Tab(text: 'Tab 2'),
    const Tab(text: 'Tab 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ETabBar'),
          bottom: TabBar(
            
            indicator: const BoxDecoration(
              color: Colors.red, 
              border: Border(
                bottom: BorderSide(
                  color: Colors.black, 
                  width: 10
                )
              )
              ),
            tabs: tabs,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ) 
      )
    );
  }
}