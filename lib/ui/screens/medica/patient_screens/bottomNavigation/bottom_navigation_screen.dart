import 'package:flutter/material.dart';
import 'package:medica/resources/color_manager.dart';
import 'package:medica/ui/screens/medica/medica.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOption = [
    HomePage(),
    const AppointmentScreen(),
    const Text('Article Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorManager.whiteColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Article',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: RGBColorManager.rgbDarkBlueColor,
          unselectedItemColor:ColorManager.grey400Color,
          iconSize: 30,
          onTap: _onItemTapped,
      ),
    );
  }
}
