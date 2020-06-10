import 'package:covid_19_stats_applicatie/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Country _selected;
  String countryName;

  class ApiService {
    final
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 Statistieken"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: CountryPicker(
                          showFlag: false,
                          nameTextStyle: TextStyle(
                            fontSize: 20,
                          ),
                          onChanged: (Country country) {
                            setState(() {
                              _selected = country;
                              countryName = _selected.name.toString().toLowerCase();
                              //delete
                              print(countryName);
                            });
                            return countryName;
                          },
                          selectedCountry: _selected,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: EdgeInsets.all(8),
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
                        subtitle: Text('Bevestigd'),
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}