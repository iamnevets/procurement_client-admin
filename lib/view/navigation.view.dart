import 'package:flutter/material.dart';
import 'package:procurement/view/auth/login.auth.view.dart';
import 'package:procurement/view/bidders/bidders.view.dart';
import 'package:procurement/view/categories/allCategories.view.dart';
import 'package:procurement/view/dashboard/dashboard.view.dart';
import 'package:procurement/view/procurers/procurers.view.dart';
import 'package:procurement/view/settings/settings.view.dart';
import 'package:procurement/view/tenders/allTenders.view.dart';

import 'bids/allbids.view.dart';
import 'notifications/notifications.view.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary.withAlpha(20),
        child: Column(
          children: [
            Container(
              height: 100,
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Text(
                  'HKMA',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DashboardView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text('Tenders'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TendersView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.folder_open_outlined),
              title: Text('Bids'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BidsView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Procurers'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProcurersView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_sharp),
              title: Text('Bidders'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BiddersView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Categories'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoriesView();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text('Notifications'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotificationsView();
                }));
              },
            ),
            Expanded(child: Container()),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingsView();
                }));
              },
            ),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Sign Out'),
                onTap: () {
                  showSignOutModal(context);
                }),
          ],
        ),
      ),
    );
  }

  showSignOutModal(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Sign Out',
              style: TextStyle(fontSize: 24, color: Theme.of(context).colorScheme.secondary),
            ),
            content: Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Are you sure you want to log out?')],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AuthLoginView();
                    }));
                  },
                  child: Text('Yes')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'))
            ],
          );
        });
  }
}
