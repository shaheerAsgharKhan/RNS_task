import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/breweryList.dart';
import 'breweryData.dart';

class BreweryList extends StatefulWidget {
  @override
  _BreweryListState createState() => _BreweryListState();
}

class _BreweryListState extends State<BreweryList> {
  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<BreweryListItems>(context).getBreweryItems();
  }
  // @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     setState(() {
  //       _isLoading = true;
  //     });

  //     Provider.of<BreweryList>(context);
  //   }
  //   _isInit = false;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final breweryData = Provider.of<BreweryListItems>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('brewry items'),
      ),
      body: ListView.builder(
        itemCount: breweryData.list.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BreweryData(breweryData)),
              );
            },
            child: Column(
              children: [
                Text('${breweryData.list[index].name}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
