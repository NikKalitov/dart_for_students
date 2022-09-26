class FunctionsTest {
  static void checkInt(String stringValue, int intValue) {
    int.parse(stringValue) == intValue
        ? print('Поздравляем! Строка верно преобразована в число!')
        : print('Ошибка!');
  }
}
