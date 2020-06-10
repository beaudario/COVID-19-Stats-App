import 'package:covid_19_stats_applicatie/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> country = [
    "Albanië",
    "Andorra",
    "België",
    "Bosnië-Herzegovina",
    "Bulgarije",
    "Canarische eilanden",
    "Corsica",
    "Cyprus",
    "Denemarken",
    "Duitsland",
    "Engeland",
    "Estland",
    "Finland",
    "Frankrijk",
    "Fuerteventura",
    "Gibraltar",
    "Gran Canaria",
    "Griekenland",
    "Groenland",
    "Hongarije",
    "Ierland",
    "IJsland",
    "Italië",
    "Kreta",
    "Kroatië",
    "Letland",
    "Liechtenstein",
    "Litouwen",
    "Luxemburg",
    "Moldavië",
    "Montenegro",
    "Nederland",
    "Noorwegen",
    "Oekraïne",
    "Oostenrijk",
    "Macedonië",
    "Mallorca",
    "Malta",
    "Moldavië",
    "Polen",
    "Portugal",
    "Roemenië",
    "Rusland",
    "Schotland",
    "San Marino",
    "Servië",
    "Slovenië",
    "Slowakije",
    "Spanje",
    "Tenerife",
    "Tsjechië"
    "Turkije",
    "Wales",
    "Wit-Rusland",
    "Zweden",
    "Zwitserland"
  ];
  Country _selected;

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
                      CountryPicker(
                        onChanged: (Country country) {
                          setState(() {
                            _selected = country;
                          });
                        },
                        selectedCountry: _selected,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}