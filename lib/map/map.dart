import './test/map_test.dart';

void main() {
  /// Изначальный Map, в котором содержатся сведения о студенте
  Map<String, dynamic> studentMap = MapTest.getRandomMap();
  print('Изначальный Map : $studentMap');
  //
  //
  /// В поля занесите данные. Данные необходимо взять из studentMap, используя
  /// ключи
  // MapTest.checkMap(
  //   name: studentMap['name'],
  //   age: studentMap['age'],
  //   averageScore: studentMap['averageScore'],
  //   likesStudying: studentMap['likesStudying'],
  //   map: studentMap,
  // );

  // MapTest.checkMap(
  //   name: ,
  //   age: ,
  //   averageScore: ,
  //   likesStudying: ,
  //   map: studentMap,
  // );

  /// Самостоятельно создайте переменную customMap типа Map<String, dynamic> и
  /// проверьте ее подобным же образом, что и studentMap
  Map<String, dynamic> customMap = {};
  MapTest.checkMap(name: ,age: ,averageScore: ,likesStudying: , map: customMap,);
}
