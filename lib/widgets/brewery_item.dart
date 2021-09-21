import 'package:flutter/material.dart';

import '../screens/brewery_detail_screen.dart';

class BreweryItem extends StatelessWidget {
  final int id;
  final String name;
  BreweryItem(this.id, this.name);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BreweryDetailScreen(id))),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
              color: Colors.amber),
          child: GridTile(
            child: Wrap(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
