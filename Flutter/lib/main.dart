import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter onderzoeksopdracht',
      home: new MyHomePage(title: 'Flutter onderzoeksopdracht'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Flutter demo')),
      body: new Center(
        child: new Column(
          children: [new Text(
            'This is my demo app in Flutter',
            style: new TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Arial",
              color: Colors.black,
            ),
          ),
          new RaisedButton(
              child: new Text(
                  'Go to next page'
              ),
              onPressed: () {Navigator.push(context, new MaterialPageRoute<SecondPage>(
                  builder: (BuildContext context) => new SecondPage()
              ));}
          ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter onderzoeksopdracht',
        home: new MySecondPage(title: 'Flutter onderzoeksopdracht'),
    );
  }
}

class MySecondPage extends StatefulWidget {
  MySecondPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _secondPageState createState() => new _secondPageState();
}

class _secondPageState extends State<MySecondPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Flutter demo')),
        body: new Center(
            child: new Text(
                'This is my second page',
                style: new TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Arial",
                    color: Colors.black,
                ),
            ),
        ),
    );
  }
}
