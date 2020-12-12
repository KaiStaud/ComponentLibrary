import 'package:flutter/material.dart';
import 'package:smart_drawer/route_add_component.dart';
import 'package:smart_drawer/route_components_table.dart';

void main() => runApp(MaterialApp(
home : MyStatefulWidget() // Starte in Home Widget
  ));

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Stock',
      style: optionStyle,
    ),
     ];

  // When user taps the lower buttons call this:
  void _onItemTapped(int index) {
    //setState(() {
     _selectedIndex = index;
     //print(index);
    if(index == 0)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RouteAddComponent()));
      }

   else if(index == 1)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RouteComponentList()));
      }

   else if(index == 3)
      {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => RouteListComponents()));
      }

   else
     {

     }
     //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Library'),
        centerTitle: true,
      ),
      body: Center(
        //child: _widgetOptions.elementAt(_selectedIndex),
        child: RaisedButton.icon(
        onPressed: (){print('test');},
    icon: Icon(
    Icons.library_add
    ),
    label: Text('add component'),
    color: Colors.blueGrey,
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.wysiwyg),label: 'Stock',),
       ],
        currentIndex: _selectedIndex, // index of the pressed field
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped, // Attach callback
      ),
    );
  }
}
