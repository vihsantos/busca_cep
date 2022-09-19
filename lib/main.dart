import 'package:flutter/material.dart';
import 'services/routers/routes.dart';
import 'services/routers/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      initialRoute: Routes.startPageRoute,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
