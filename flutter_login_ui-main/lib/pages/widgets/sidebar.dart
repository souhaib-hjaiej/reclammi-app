import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/widgets/statistique.dart';
import 'package:flutter_login_ui/pages/mypost.dart';
import 'package:flutter_login_ui/pages/new_reclamation.dart';

import '../profile_page.dart';

class DrawerWidget extends StatelessWidget {
  final List<String> complaintTypes = ['Type 1', 'Type 2', 'Type 3'];
  final double drawerIconSize = 24;
  final double drawerFontSize = 17;

  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(decoration: BoxDecoration(
              ),),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'New Reclamation',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NewReclamationForm(complaintTypes: complaintTypes),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.stacked_bar_chart_rounded,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'Statistics',
                style: TextStyle(fontSize: drawerFontSize, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statistique()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.cabin,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'Main Page',
                style: TextStyle(fontSize: drawerFontSize, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.location_on,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'Map',
                style: TextStyle(fontSize: drawerFontSize, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mypost()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.insert_drive_file_rounded,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'My Post',
                style: TextStyle(fontSize: drawerFontSize, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mypost()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.logout_rounded,
                size: drawerIconSize,
                color: Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: drawerFontSize, color: Colors.black),
              ),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
