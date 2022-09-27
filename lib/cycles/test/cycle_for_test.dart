import 'dart:math';

class ForCycleTest {
  static List<int> randomListGeneration() {
    List<int> list = [];
    Random random = Random();
    for (int i = 0; i < 10; i++) {
      int positiveOrNegative = 1;
      if (random.nextInt(20) % 2 == 0) {
        positiveOrNegative = -1;
      }
      list.add(random.nextInt(20) * positiveOrNegative);
    }
    return list;
  }

  static void checkingList(List<int> yourList, List<int> listToCompare) {
    bool isCorrect = true;
    if (yourList.isEmpty) {
      isCorrect = false;
    }
    for (int i = 0; i < listToCompare.length; i++) {
      if (listToCompare[i] < 0 && yourList[i] != 2) {
        isCorrect = false;
      }
    }
    isCorrect
        ? print('Поздравляем! Задание выполнено верно!')
        : print('Ошибка! Задание выполнено неверно!');
  }
}
