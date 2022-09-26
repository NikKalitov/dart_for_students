import '../cycles/test/cycle_for_test.dart';

void main() {
  List<int> listToModify = ForCycleTest.randomListGeneration();
  print('Изначальный массив $listToModify');
  // Удалите последний элемент и проверьте изменение
  print('Массив без последнего элемента $listToModify');
  // Удалите второй элемент из массива (помните, что счет начинается с 0, а не 1)
  print('Массив без второго элемента $listToModify');
  // Добавьте элемент массива
  print('Массив с новым элементом: $listToModify');
}
