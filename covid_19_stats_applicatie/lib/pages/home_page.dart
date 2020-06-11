import 'dart:convert';

import 'package:covid_19_stats_applicatie/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Country _selected;
  String countryCode, countryUrl;
  String confirmed = '0';
  String deaths = '0';
  String recovered = '0';
  String url = "https://corona-api.com/countries/";

  Future<String> httpRequest() async {
    var res = await http.get(countryUrl);
    var result = json.decode(res.body);

    setState(() {
      confirmed = result['data']['latest_data']['confirmed'].toString();
      deaths = result['data']['latest_data']['deaths'].toString();
      recovered = result['data']['latest_data']['recovered'].toString();
    });

    return result;
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
                              countryCode = _selected.isoCode;
                              countryUrl = url + countryCode;
                              print(countryUrl);
                              httpRequest();
                            });
                            return countryUrl;
                          },
                          selectedCountry: _selected,
                        ),
                      ),
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
                          confirmed,
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
                          deaths,
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
                          recovered,
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