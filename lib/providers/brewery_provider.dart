import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/brewery_model.dart';

class BreweryProvider with ChangeNotifier {
  List<BreweryModel> _bList = [];

  List<BreweryModel> get brList {
    return [..._bList];
  }

  Future<void> getBreweryItems() async {
    var url = Uri.parse('https://api.openbrewerydb.org/breweries');
    try {
      final response = await http.get(url);
      var data = response.body;
      print(data);
      List<BreweryModel> loadedProducts = [];

      loadedProducts = breweryModelFromJson(data);

      _bList = loadedProducts;
      notifyListeners();
    } catch (err) {}
  }

  BreweryModel findById(int id) {
    return _bList.firstWhere((brew) => brew.id == id);
  }
}
