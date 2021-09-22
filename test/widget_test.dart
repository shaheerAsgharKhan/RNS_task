// import 'package:test/test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:rns_task/main.dart';
import 'package:rns_task/providers/brewery_provider.dart';

void main() {
  testWidgets('Test to see that MaterialApp widget is in tree',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets(
      'Test i the circular progress bar is there and no grid tile is there',
      (WidgetTester tester) async {
    await tester.pumpWidget(Provider.value(
      value: BreweryProvider,
      child: CircularProgressIndicator(),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
