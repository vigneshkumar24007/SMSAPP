import 'package:sqflites/Database_helper/Repository.dart';

import '../Model/Mdl_Users.dart';

class UserService {
  late repository _repository;

  UserService() {
    _repository = repository();
  }
  SaveUser(MdlUsers user) async {
    return await _repository.insertData('users', user.usermap());
  }
}
