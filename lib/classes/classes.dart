import './test/classes_test.dart';

/// Напишите абстрактный класс Creature (Существо).
/// В нем должны быть nullable поля
/// weight (вес) типа int и coldBlooded (хладнокровный) типа bool
/// и метод breathe, который возвращает строку (например, звук дыхания).
/// В классе должен быть конструктор с именованными параметрами.
///
/// Написать класс Dog, который наследуется от Creature.
/// В классе Dog реализовать nullable поля name типа String и age типа int.
/// Создать конструктор с именованными полями для класса Dog.

/// Я хз, нужно ли добавлять сюда еще и интерфейсы с миксинами. Это для новичка
/// жесть полная будет

abstract class Creature {
  int? weight;
  bool? coldBlooded;

  Creature({
    this.weight,
    this.coldBlooded,
  });

  String breathe() {
    return 'Breathe in, breathe out';
  }
}

class Dog extends Creature {
  String? name;
  int? age;
  Dog({
    super.weight,
    super.coldBlooded,
    this.name,
    this.age,
  });
}

void main() {
  runTest();
}
