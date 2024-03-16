import 'package:get/get.dart';
import 'package:repairs_app/screens/dashboard_screen.dart';
import 'package:repairs_app/screens/home_screen.dart';
import 'package:repairs_app/screens/joking_screen.dart';
import 'package:repairs_app/screens/login_screen.dart';
import 'package:repairs_app/screens/regestration_screen.dart';

class RoutesClass {
  static String home = '/';
  static String login = '/login';
  static String registration = '/registration';
  static String dashboard = '/dashboard';
  static String jokes = '/jokes';

  static String getHomeRoute() => home;
  static String getLoginRoute() => login;
  static String getRegistrationRoute() => registration;
  static String getDashboardRoute() => dashboard;
  static String getJokesRoute() => jokes;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeScreen(), 
    ),
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: registration,
      page: () => RegistrationScreen(),
    ),
    GetPage(
      name: dashboard,
      page: () => DashboardScreen(),
    ),
    GetPage(
      name: jokes,
      page: () =>  JokingScreen(),
    ),
  ];
}
