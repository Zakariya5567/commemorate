import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDb {
  static const String _bearerTokenKey = "BearerToken";
  static const String _isLoginKey = "isLogin";
  static const String _userDatalKey = "userData";
  static const String _userIdKey = "userId";

  //=============================================================================
  // Set bearer token
  static Future<void> storeBearerToken(String value) async {
    // initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Store bearer token in shared preferences
    sharedPreferences.setString(_bearerTokenKey, value);
  }

  // Get bearer token
  static Future<String?> get getBearerToken async {
    // Initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Get the bearer token which we have stored in sharedPreferences before
    String? bearerToken = sharedPreferences.getString(_bearerTokenKey);
    return bearerToken;
  }

  //=============================================================================
  // Set user isLogin
  static Future<void> storeLogin(bool value) async {
    // initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Store user isLogin shared preferences
    sharedPreferences.setBool(_isLoginKey, value);
  }

  // Get user login Status
  static Future<bool?> get getLogin async {
    // Initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Get the user isLogin which we have stored in sharedPreferences before
    bool? isLogin = sharedPreferences.getBool(_isLoginKey);
    return isLogin;
  }

  //=============================================================================
  // // Store User Data
  // static Future<void> storeUserData(UserDataModel value) async {
  //   // initialized shared preferences
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   // Store User Data in shared preferences
  //   sharedPreferences.setString(_userDatalKey, jsonEncode(value.toJson()));
  // }
  //
  // // Get User Data
  // static Future<UserDataModel?> get getUserData async {
  //   // Initialized shared preferences
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   // Get the User Data which we have stored in sharedPreferences before
  //   var userData = sharedPreferences.getString(_userDatalKey);
  //  if (userData != null) {
  //   // Decode JSON and convert it back to SignInModel
  //   Map<String, dynamic> userMap = jsonDecode(userData);
  //   return UserDataModel.fromJson(userMap);
  // }
  // return null;
  // }

  // Reset SharedPreference
  static Future<void> get resetSharedPreference async {
    // Initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  //=============================================================================
  // Set userid
  static Future<void> storeUserId(int value) async {
    // initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Store user id shared preferences
    sharedPreferences.setInt(_userIdKey, value);
  }

  // Get user login Status
  static Future<int?> get getUserId async {
    // Initialized shared preferences
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Get the userid we have stored in sharedPreferences before
    int? userId = sharedPreferences.getInt(_userIdKey);
    return userId;
  }
}
