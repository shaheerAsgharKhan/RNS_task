import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rns_task/providers/brewery.dart';
import 'package:rns_task/providers/breweryList.dart';

import 'screens/list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Brewery(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => BreweryListItems(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BreweryList(),
      ),
    );
  }
}
