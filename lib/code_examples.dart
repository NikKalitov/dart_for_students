import 'dart:math';

/// Иванов Иван Иванович

// Генерация случайного массива типа int из 10 элементов.
List<int> randomListGeneration() {
  List<int> list = [];
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    int positiveOrNegative = 1;
    if (random.nextInt(7) % 2 == 0) {
      positiveOrNegative = -1;
    }
    list.add(random.nextInt(20) * positiveOrNegative);
  }
  print('Изначальный случайный лист: $list');
  return list;
}

void main() {
  // Создаем массив случайных элементов типа int.
  List<int> randomList = randomListGeneration().toList();

  /// Переменная содержит результат выполнения вызванной функции.
  ///
  /// Чтобы выполнить задание, напишите свою функцию в указанном месте и
  /// вызовите ее так, как показано ниже.
  /// Будьте внимательны, поскольку по заданию ваша функция может не принимать
  /// массив типа int.
  var yourAnswer = changeOneElement(randomList);

  /// Чтобы увидеть результат работы (ваш ответ), вставляем функцию в print.
  print('Ваш ответ:');
  print(yourAnswer);
}

//
//
// Место для ответа на первое задание
//
//

//
//
// Место для ответа на второе задание
//
//

//
//
//
/// Возвращаем наибольшее значение из массива.
/// Функция на вход получает массив типа int.
/// Используем переменную, которая будет содержать в себе максимальное значение.
/// Дадим этой переменной название maxNumber и присвоим значение 0.
/// Далее идет цикл for(){}. Подробнее об этом цикле рассказывается в лекции.
/// Также рекомендуем посмотреть прикрепленные материалы или выполнить поиск
/// самим.
/// Далее, если элемент нашего массива оказывается больше нашего maxNumber,
/// то мы присваиваем maxNumber значение этого элемента. И так идет сравнение
/// со всеми элементами массива. Если последующий больше, maxNumber снова
/// принимает его значение.
/// В конце выполнения функции мы прошлись по всем элементам массива и выбрали
/// наибольший из них. Его мы и выводим с помощью return.
int returnMaxNumberFromList(List<int> list) {
  int maxNumber = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > maxNumber) {
      maxNumber = list[i];
    }
  }
  return maxNumber;
}

//
//
//
/// Необходимо массив типа int вывести в виде строки, где элементы перечислены
/// через запятую.
/// Так же используем цикл for(){} для выполнения этого задания.
/// Чтобы добавить к строке новые элемент массива, мы так и записываем:
/// значение строки + элемент массива (с методом toString()) + запятая.
/// Только необходимо сделать проверку. Если наш рассматриваемый элемент является
/// последним, то после него запятую не ставим.
String returnNumbersAsString(List<int> list) {
  String string = '';
  for (int i = 0; i < list.length; i++) {
    if (list[i] != list.last) {
      string = string + list[i].toString() + ',';
    } else {
      string = string + list[i].toString();
    }
  }
  return string;
}

//
//
//
/// Заменить элемент, равный четырем или пяти, числом 70.
/// Проходим циклом for по всему массиву и, если наше условие выполняется,
/// меняем значение подходящего элемента.
List<int> changeOneElement(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == 4 || list[i] == 5) {
      list[i] = 70;
    }
  }
  return list;
}

//
//
//
/// ООП
/// Создаем абстрактный класс Website.
abstract class Website {
  /// Nullable поля класса.
  String? url;
  int? rating;

  /// Конструктор класса с именованными параметрами.
  Website({
    this.url,
    this.rating,
  });
}

/// Класс VK наследуется от класса Website.
class VK extends Website {
  /// Поля класса VK.
  int? numberOfUsers;
  String? userName;

  /// Метод класса VK, который возвращает поле userName.
  String? returnUserName() {
    return userName;
  }

  /// Конструктор класса VK. Через ключевое слово super можно обращаться к полям
  /// родительского класса.
  VK({
    super.url,
    super.rating,
    this.numberOfUsers,
    this.userName,
  });
}
