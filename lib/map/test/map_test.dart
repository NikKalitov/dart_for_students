import 'dart:math';

class MapTest {
  static Map<String, dynamic> getRandomMap() {
    String name;
    int age;
    double averageScore;
    bool likesStudying;
    final random = Random();
    age = 18 + random.nextInt(5);
    averageScore = 4 + double.parse((random.nextDouble().toStringAsFixed(2)));
    int valueForName = random.nextInt(5);
    likesStudying = random.nextBool();
    switch (valueForName) {
      case 1:
        name = 'Иванов И.И.';
        break;
      case 2:
        name = 'Копирин С.А.';
        break;
      case 3:
        name = 'Блоев П.Е.';
        break;
      case 4:
        name = 'Купчин К.Л';
        break;
      case 5:
        name = 'Шохарев Ф.С.';
        break;
      default:
        name = 'Захаров И.В.';
    }
    Map<String, dynamic> map = {
      'name': name,
      'age': age,
      'averageScore': averageScore,
      'likesStudying': likesStudying,
    };
    return map;
  }

  static bool _checkName(Map<String, dynamic> map, String name) {
    bool isCorrect = false;
    if (map['name'] == name) {
      isCorrect = true;
    }
    return isCorrect;
  }

  static bool _checkAge(Map<String, dynamic> map, int age) {
    bool isCorrect = false;
    if (map['age'] == age) {
      isCorrect = true;
    }
    return isCorrect;
  }

  static bool _checkLikesStudying(
      Map<String, dynamic> map, bool likesStudying) {
    bool isCorrect = false;
    if (map['likesStudying'] == likesStudying) {
      isCorrect = true;
    }
    return isCorrect;
  }

  static bool _checkAverageScore(
      Map<String, dynamic> map, double averageScore) {
    bool isCorrect = false;
    if (map['averageScore'] == averageScore) {
      isCorrect = true;
    }
    return isCorrect;
  }

  static void checkMap({
    String? name,
    int? age,
    double? averageScore,
    bool? likesStudying,
    Map<String, dynamic>? map,
  }) {
    bool isCorrect = false;
    try {
      if (_checkName(map!, name!) &&
          _checkAge(map, age!) &&
          _checkAverageScore(map, averageScore!) &&
          _checkLikesStudying(map, likesStudying!)) {
        isCorrect = true;
      }
    } catch (e) {
      // print('Ошибка! Задание выполнено неверно!');
    }
    isCorrect
        ? print('Поздравляем! Задание выполнено верно!')
        : print('Ошибка! Задание выполнено неверно!');
  }
}
