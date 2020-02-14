import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  launchMap() async {
    final availableMaps = await MapLauncher.installedMaps;
    print(availableMaps);

    await availableMaps.first.showMarker(
      coords: Coords(31.233568, 121.505504),
      title: "Shanghai Tower",
      description: "Asia's tallest building",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Launch Map')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: launchMap,
        tooltip: 'Increment',
        child: Icon(Icons.map),
      ), 
    );
  }
}
