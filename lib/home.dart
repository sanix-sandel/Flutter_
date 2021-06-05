import 'package:flutter/material.dart';
import 'package:flutter_widgets/birthdays.dart';
import 'package:flutter_widgets/gratitude.dart';
import 'package:flutter_widgets/reminders.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _listPages = [];
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();

    _listPages..add(Birthdays())..add(Gratitude)..add(Reminders);
    print(_listPages);
    _currentPage = Birthdays();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      print(selectedIndex);
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.cake), title: Text('Birthdays')),
          BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_satisfied), title: Text('Gratitude')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Reminders')),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}
