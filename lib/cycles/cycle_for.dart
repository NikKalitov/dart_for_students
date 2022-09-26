import 'test/cycle_for_test.dart';

void main() {
  final List<int> initialList = ForCycleTest.randomListGeneration();
  print('Исходный массив: $initialList');
  List<int> yourList = yourFunction(initialList);
  print('Ваш массив: $yourList');
  ForCycleTest.checkingList(yourList, initialList);
}

/// Продолжите функцию, чтобы она заменяла отрицательные элементы массива двойками
List<int> yourFunction(List<int> initialList) {
  List<int> yourList = [];
  yourList = initialList.toList();

  /// Допишите алгоритм тут
  // for (int i = 0; i < yourList.length; i++) {
  //   if (yourList[i] < 0) {
  //     yourList[i] = 2;
  //   }
  // }

  return yourList;
}
