import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/brewery_provider.dart';
import '../widgets/brewery_item.dart';

class BreweryListScreen extends StatefulWidget {
  @override
  _BreweryListScreenState createState() => _BreweryListScreenState();
}

class _BreweryListScreenState extends State<BreweryListScreen> {
  Future isBreweryLoaded;
  Future _obtainOrdersFuture() {
    return Provider.of<BreweryProvider>(context, listen: false)
        .getBreweryItems();
  }

  @override
  void initState() {
    super.initState();
    isBreweryLoaded = _obtainOrdersFuture();
    //Provider.of<BreweryProvider>(context, listen: false).getBreweryItems();
  }

  @override
  Widget build(BuildContext context) {
    final breweryList = Provider.of<BreweryProvider>(context);
    final breweryListItems = breweryList.brList;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Brewery list',
          textAlign: TextAlign.center,
        )),
      ),
      body: FutureBuilder(
        future: isBreweryLoaded,
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: breweryListItems.length,
                itemBuilder: (ctx, i) => BreweryItem(
                    breweryListItems[i].id, breweryListItems[i].name),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
