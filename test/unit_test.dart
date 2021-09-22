import 'package:rns_task/models/brewery_model.dart';
import 'package:rns_task/providers/brewery_provider.dart';
import 'package:test/test.dart';

void main() {
  BreweryProvider breweyP;
  setUp(() {
    breweyP = BreweryProvider();
  });

  tearDown(() {
    breweyP.dispose();
  });
  test('Check Todo List is empty', () {
    expect(breweyP.brList, <BreweryModel>[]);
  });
  test('check if list is filled', () async {
    await breweyP.getBreweryItems();

    expect(breweyP.brList.length, 20);
  });
}
