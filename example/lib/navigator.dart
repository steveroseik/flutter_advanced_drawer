import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer_example/homePage.dart';

class MainNavigator extends StatelessWidget {
  const MainNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: routesGenerator,
    );
  }
}

Route routesGenerator(RouteSettings settings){
  switch(settings.name){
    case '/': return MaterialPageRoute(builder: (_) => HomePage());
    default: return errorRoute();
  }
}

Route<dynamic> errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ), // AppBar
      body: const Center(
        child: Text('ERROR'),
      ), // Center
    ); // Scaffold
  }); // Material PageRoute
}
