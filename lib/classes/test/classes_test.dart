import 'package:test/test.dart';
import '../classes.dart';

void runTest() {
  test('OOP test', () {
    final rex = Dog(name: 'Rex', age: 5, coldBlooded: false, weight: 15);
    expect(rex.age.runtimeType, int);
    expect(rex.name.runtimeType, String);
    expect(rex.coldBlooded.runtimeType, bool);
    expect(rex.weight.runtimeType, int);
    expect(rex.breathe().runtimeType, String);
  });
}
