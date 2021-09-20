import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'brewery.dart';

class BreweryListItems with ChangeNotifier {
  List tempList = [];
  List<Brewery> _list = [];

  List<Brewery> get list {
    return [..._list];
  }

  Future<void> getBreweryItems() async {
    var url = Uri.parse('https://api.openbrewerydb.org/breweries');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Brewery> loadedProducts = [];
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(Brewery(
          id: prodData['id'],
          obdbId: prodData['obdb_id'],
          name: prodData['name'],
          breweryType: prodData['brewery_type'],
          city: prodData['city'],
          state: prodData['state'],
          postalCode: prodData['postal_code'],
          country: prodData['country'],
          updatedAt: prodData['updated_at'],
          createdAt: prodData['created_at'],
        ));
      });
      _list = loadedProducts;
      notifyListeners();
    } catch (err) {}
  }
}
