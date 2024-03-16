import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptops Repair App'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  DashboardItem(
                    title: 'New Repairs',
                    icon: Icons.build,
                    color: Colors.orange,
                    onTap: () {
                      // Handle New Repairs tap
                    },
                  ),
                  DashboardItem(
                    title: 'My Orders',
                    icon: Icons.shopping_cart,
                    color: Colors.blue,
                    onTap: () {
                      // Handle My Orders tap
                    },
                  ),
                  DashboardItem(
                    title: 'Services',
                    icon: Icons.settings_input_component,
                    color: Colors.green,
                    onTap: () {
                      // Handle Services tap
                    },
                  ),
                  DashboardItem(
                    title: 'Profile',
                    icon: Icons.person,
                    color: Colors.purple,
                    onTap: () {
                      // Handle Profile tap
                    },
                  ),
                  DashboardItem(
                    title: 'Notifications',
                    icon: Icons.notifications,
                    color: Colors.red,
                    onTap: () {
                      // Handle Notifications tap
                    },
                  ),
                  DashboardItem(
                    title: 'Contact Support',
                    icon: Icons.headset_mic,
                    color: Colors.teal,
                    onTap: () {
                      // Handle Contact Support tap
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  DashboardItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Colors.white,
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
