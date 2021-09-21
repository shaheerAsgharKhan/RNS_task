import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/brewery_provider.dart';

class BreweryDetailScreen extends StatelessWidget {
  final int id;
  BreweryDetailScreen(this.id);
  @override
  Widget build(BuildContext context) {
    Color pColor = Theme.of(context).primaryColor;
    final breweryDetails =
        Provider.of<BreweryProvider>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('${breweryDetails.name}'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ID: '),
                  Text((breweryDetails.id != null)
                      ? breweryDetails.id.toString()
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name: '),
                  Text((breweryDetails.name != null)
                      ? breweryDetails.name
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Brewery Type: '),
                  Text((breweryDetails.breweryType != null)
                      ? breweryDetails.breweryType
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Street: '),
                  Text((breweryDetails.street != null)
                      ? breweryDetails.street
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address #2: '),
                  Text((breweryDetails.address2 != null)
                      ? breweryDetails.address2
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address #3: '),
                  Text((breweryDetails.address3 != null)
                      ? breweryDetails.address3
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('City: '),
                  Text((breweryDetails.city != null)
                      ? breweryDetails.city
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('State: '),
                  Text((breweryDetails.state != null)
                      ? breweryDetails.state
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Country Province: '),
                  Text((breweryDetails.countyProvince != null)
                      ? breweryDetails.countyProvince
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Postal Code: '),
                  Text((breweryDetails.postalCode != null)
                      ? breweryDetails.postalCode
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Country: '),
                  Text((breweryDetails.country != null)
                      ? breweryDetails.country
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Longitude: '),
                  Text((breweryDetails.longitude != null)
                      ? breweryDetails.longitude
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('latitude: '),
                  Text((breweryDetails.latitude != null)
                      ? breweryDetails.latitude
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone Number: '),
                  Text((breweryDetails.phone != null)
                      ? breweryDetails.phone
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Website URl: '),
                  Flexible(
                    child: Text((breweryDetails.websiteUrl != null)
                        ? breweryDetails.websiteUrl
                        : 'null'),
                  ),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Updated at: '),
                  Text((breweryDetails.updatedAt != null)
                      ? breweryDetails.updatedAt
                      : 'null'),
                ],
              ),
              Divider(
                color: pColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Created at: '),
                  Text((breweryDetails.createdAt != null)
                      ? breweryDetails.createdAt
                      : 'null'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
