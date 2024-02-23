import 'package:flutter/material.dart';

class SideDrawerScreen extends StatefulWidget {
  const SideDrawerScreen({super.key});

  @override
  State<SideDrawerScreen> createState() => _SideDrawerScreenState();
}

class _SideDrawerScreenState extends State<SideDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8UHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Kristen",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.account_balance),
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
