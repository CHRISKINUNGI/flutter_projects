import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repairs_app/controllers/home_controller.dart';
import 'package:repairs_app/screens/joking_screen.dart';
import 'package:repairs_app/widgets/custom_card.dart';
import 'package:repairs_app/screens/dashboard_screen.dart'; // Import DashboardScreen

class HomeScreen extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());

  static final List<Widget> _widgetOptions = <Widget>[
    // Placeholder for Home
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to our Laptop Repair Services',
          style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
        ),
      ],
    ),
    // Placeholder for Orders
    const Text('Orders Page'),
    // Placeholder for Profile
    const Text('Profile Page'),
    // Placeholder for More
    const Text('More Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Laptops Repair App'),
      //   backgroundColor: Colors.blue,
      //  ),
      body: Obx(() {
        if (_homeController.selectedIndex.value == 0) {
          return _buildServiceCards();
        } else {
          return Center(
            child:
                _widgetOptions.elementAt(_homeController.selectedIndex.value),
          );
        }
      }),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildServiceCards() {
    return ListView.separated(
      itemCount: _homeController.services.length,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16.0),
      itemBuilder: (context, index) {
        return ServiceCard(service: _homeController.services[index]);
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],
      currentIndex: _homeController.selectedIndex.value,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        _homeController.changeSelectedIndex(index);

        // Check if the "More" tab is clicked (index 3) and navigate to DashboardScreen
        if (index == 3) {
          Get.to(DashboardScreen());
        }
        if (index == 1) {
          Get.to(JokingScreen());
        }
      },
    );
  }
}
