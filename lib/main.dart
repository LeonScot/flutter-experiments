import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
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
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 61,
            color: Colors.red[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.access_alarm),
                Icon(Icons.dashboard),
                Icon(Icons.notifications),
                Icon(Icons.settings),
                Icon(Icons.dock_rounded),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[300],
              child: Column(
                children: [
                  Container(
                    height: 20,
                    color: Colors.yellow,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            color: Colors.blueAccent,
                            child: Text(
                              'Breadcrumb',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.purple,
                            child: Text(
                              'Running',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black45,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.redAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                child: Text('card 1'),
                              ),
                              Card(
                                child: Text('card 2'),
                              ),
                            ],
                          ),
                          Card(
                            child: Text('card 3'),
                          ),
                          Card(
                            child: Text('card 4'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Container(
                      color: Colors.limeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
