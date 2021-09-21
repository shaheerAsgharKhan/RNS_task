import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/brewery_list_screen.dart';
import './providers/brewery_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => BreweryProvider(),
      child: MaterialApp(
        title: 'Open Brewery',
        theme: ThemeData(
          primaryColor: Colors.pink[900],
        ),
        home: BreweryListScreen(),
      ),
    );
  }
}
