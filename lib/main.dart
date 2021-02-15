import 'package:flutter/material.dart';
import 'src/widgets/fab_bottom_app_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Note Klynox',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: new MyHomePage(title: 'Notily'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';
  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey[400],
        selectedColor: Colors.black,
        backgroundColor: Colors.white,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(text: 'Home', iconData: Icons.home_filled),
          FABBottomAppBarItem(text: 'Browse', iconData: Icons.widgets_rounded),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 12,
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
