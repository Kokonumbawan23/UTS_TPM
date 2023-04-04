import 'package:flutter/material.dart';
import 'package:uts_tpm/login.dart';
import 'package:uts_tpm/shape.dart';
import 'shape/trapesium.dart';
import './calendar.dart';
import './profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedOption = 0;
  List<String> titleOptions = ['Bangun Datar', 'Calendar', 'Profile'];
  String title = 'Bangun Datar';

  static const List<Widget> pageOption = [
    Shape(),
    Calendar(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: pageOption[selectedOption],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedOption = index;
            title = titleOptions[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.window), label: 'Bangun Datar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        ],
        currentIndex: selectedOption,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
