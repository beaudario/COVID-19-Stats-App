import 'package:covid_19_stats_applicatie/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 Statistics"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("Hallo"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}