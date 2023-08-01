import 'package:flutter/material.dart';

class Child extends StatelessWidget {
  const Child({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Home'),
          //   selected: _selectedIndex == 0,
          onTap: () {
            // _onItemTapped(0);
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Business'),
          // selected: _selectedIndex == 1,
          onTap: () {
            // _onItemTapped(1);

            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('School'),
          //selected: _selectedIndex == 2,
          onTap: () {
            //  _onItemTapped(2);

            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
