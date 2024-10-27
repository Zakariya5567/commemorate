import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/model/authentication_model/signin_model.dart';
import '../data/repository/api_repo.dart';
import '../helper/connection_checker.dart';
import '../helper/router_navigator.dart';
import '../main.dart';
import '../utils/api_url.dart';
import '../view/widgets/loading_dialog.dart';
import '../view/widgets/show_message_dialog.dart';
import 'bottom_navigation_provider.dart';

class AuthProvider extends ChangeNotifier {
  // SignIn controller
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPasswordController = TextEditingController();

  // Variables
  bool? isLoading;

  // Set Loading
  setLoading(bool value) {
    isLoading = value;
    if (value == true) {
      loaderDialog();
    } else {
      goBack();
    }
    notifyListeners();
  }

  ApiRepo apiRepo = ApiRepo();
  SignInModel signInModel = SignInModel();

  // Clear Signin Fields
  clearSignInFields() {
    apiRepo = ApiRepo();
    signInModel = SignInModel();
    signInEmailController.clear();
    signInPasswordController.clear();
    notifyListeners();
  }

/*=================================================================================
  APIs calling
 ==================================================================================*/

  // SignIn ===================================================
  Future<void> signIn() async {
    setLoading(true);
    final hasInternet = await checkInternet();
    if (!hasInternet) {
      setLoading(false);
      return;
    }
    debugPrint("isLoading: $isLoading");
    debugPrint("SignIn ==========================>>>");
    try {
      Response response = await apiRepo.postRequest(ApiUrl.signInUrl, {
        "email": signInEmailController.text,
        "password": signInPasswordController.text,
      });
      final responseBody = response.data;
      debugPrint("response body ===============>>> $responseBody");
      signInModel = SignInModel.fromJson(responseBody);
      setLoading(false);
      // If any error occurs it will show a popup
      if (signInModel.error == true) {
        showMessageDialog(
            message: signInModel.message!, isError: signInModel.error!);
      } else {}
      debugPrint("isLoading: $isLoading");
    } catch (e) {
      setLoading(false);
      showMessageDialog(isError: true, message: e.toString());
      debugPrint("isLoading: $isLoading");
    }
    notifyListeners();
  }
}
