import 'package:get_storage/get_storage.dart';

class T_LocalStorgae {
  static final T_LocalStorgae _instance = T_LocalStorgae();

  factory T_LocalStorgae() {
    return _instance;
    
  }
  T_LocalStorgae._internal();

  final _Storage = GetStorage();

  Future<void> saveData<T>(String Key, T Value) async {
    await _Storage.write(Key, Value);
  }

  T? readData<T>(String Key) {
    return _Storage.read(Key);
  }

  Future<void> removeData(String Key) async {
    await _Storage.remove(Key);
  }

  Future<void> Clearall(String Key) async {
    await _Storage.erase();
  }
}
