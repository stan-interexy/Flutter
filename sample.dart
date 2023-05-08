import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Senior Flutter Developer Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _inputController = TextEditingController();

  String _displayResult = '';

  void _updateDisplay(String text) {
    setState(() {
      _displayResult = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Senior Flutter Developer Sample'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter your text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () => _updateDisplay(_inputController.text),
              child: Text('Display Text'),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
            SizedBox(height: 16.0),
            Text(
              _displayResult,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}