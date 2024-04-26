/*
import 'package:get_storage/get_storage.dart';

class TlocalStorage {
  static final TlocalStorage _instance = TlocalStorage._internal();

  factory TlocalStorage() {
    return _instance;
  }
  TlocalStorage._internal();
  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic method to read data
  T? readData<T>(String key) {
    return _storage.read(key);
  }

  // generic method to reomve
  Future<void> reomveData(String key) async {
    await _storage.remove(key);
  }

//clear all data storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}

*/