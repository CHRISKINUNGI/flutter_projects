import 'package:get/get.dart';
import 'package:repairs_app/models/service_model.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List<Service> services = [
    Service(
      title: 'Screen Replacement',
      description: 'Replace cracked or malfunctioning laptop screens.',
      price: 99.99,
      imageUrl: 'assets/images/broken-screen.png',
    ),
    Service(
      title: 'Battery Replacement',
      description: 'Upgrade to a new and longer-lasting battery.',
      price: 49.99,
      imageUrl: 'assets/images/battery.png',
    ),
    Service(
      title: 'Keyboard Repair',
      description: 'Fix non-functional or damaged laptop keyboards.',
      price: 29.99,
      imageUrl: 'assets/images/keyboard.png',
    ),
    // Add more services as needed
  ];

  void changeSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
