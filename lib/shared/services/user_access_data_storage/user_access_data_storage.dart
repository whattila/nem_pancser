import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'models/user_access_data.model.dart';

class UserAccessDataStorage {
  static const String _userAccessDataKey = 'user_access_data';

  final FlutterSecureStorage _storage = FlutterSecureStorage();
  UserAccessData? _userAccessData;

  Future<UserAccessData?> getUserAccessData() async {
    _userAccessData ??= await _readAccessData();
    return _userAccessData;
  }

  Future<void> setUserAccessData(UserAccessData user) async {
    _userAccessData = user;
    await _storage.write(key: _userAccessDataKey, value: jsonEncode(user));
  }

  Future<void> clearData() async {
    _userAccessData = null;
    await _storage.delete(key: _userAccessDataKey);
  }

  Future<UserAccessData?> _readAccessData() async {
    final encoded = await _storage.read(key: _userAccessDataKey);
    if (encoded == null) {
      return null;
    }
    final json = jsonDecode(encoded) as Map<String, dynamic>;
    return UserAccessData.fromJson(json);
  }
}