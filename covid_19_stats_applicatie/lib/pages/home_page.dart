import 'package:covid_19_stats_applicatie/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 Statistieken"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.blur_circular, //filter_tilt_shift,
                  color: Colors.orange[400],
                  size: 40,

                ),
                title: Text(
                  '1000',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                    'Bevestigd'
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.blur_circular, //filter_tilt_shift,
                  color: Colors.red[400],
                  size: 40,
                ),
                title: Text(
                  '1000',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text('Sterfgevallen'),
              ),
              ListTile(
                leading: Icon(
                  Icons.blur_circular, //filter_tilt_shift,
                  color: Colors.green[400],
                  size: 40,
                ),
                title: Text(
                  '1000',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text('Hersteld'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}