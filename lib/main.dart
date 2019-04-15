import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Taschenrechner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double val1 = 0;
  double val2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (String text) {
                setState(() {
                  val1 = double.parse(text);
                });
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter value 1'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = val1 + val2;
                    });
                  },
                  child: const Text('+'),
                  color: Theme.of(context).accentColor,
                  splashColor: Colors.blueGrey,
                ),
                new RaisedButton(
                  child: const Text('-'),
                  onPressed: () {
                    setState(() {
                      result = val1 - val2;
                    });
                  },
                  color: Theme.of(context).accentColor,
                  splashColor: Colors.blueGrey,
                ),
                new RaisedButton(
                  child: const Text('*'),
                  onPressed: () {
                    setState(() {
                      result = val1 * val2;
                    });
                  },
                  color: Theme.of(context).accentColor,
                  splashColor: Colors.blueGrey,
                ),
                new RaisedButton(
                  child: const Text('/'),
                  onPressed: () {
                    setState(() {
                      result = val1 / val2;
                    });
                  },
                  color: Theme.of(context).accentColor,
                  splashColor: Colors.blueGrey,
                )
              ],
            ),
            TextField(
              onChanged: (String text) {
                setState(() {
                  val2 = double.parse(text);
                });
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter value 2'),
            ),
            Text(
              'Output: $result',
            ),
          ],
        ),
      ),
    );
  }
}
