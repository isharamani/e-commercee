import 'package:get_storage/get_storage.dart';

class TLocalStorage{

  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage(){
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveDate<T>(String key, T value)async
  {
    await _storage.write(key,value);
  }

  T? readDate<T>(String key){
    return _storage.read<T>(key);
  }

  Future<void> removeDate(String key)async{
    await _storage.remove(key);
  }
  Future<void> clearAll(String key)async{
    await _storage.erase();
  }
}
