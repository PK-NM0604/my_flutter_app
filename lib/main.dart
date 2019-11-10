import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Doraemon Home Page'),
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
  int _counter = 0;
  int ch=0;
  String _greeting = 'hi';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print( _counter);
  }
  void _decrementCouter() {
    setState(() {
      _counter -=1;
    });
    print(_counter);
  }
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
            Text(
              '$_greeting',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            if(_counter <=10 &&ch==0){
              _incrementCounter();
              if(_counter==10){
                ch=1;
              }
            }
              else{
                _decrementCouter();
                if(_counter==0){
                  ch=0;
                }
              }
        },
        tooltip: 'Increment',
        child: Icon(Icons.home),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
