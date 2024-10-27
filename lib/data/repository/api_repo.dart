import 'dart:io';
import 'package:commemorate/helper/router_navigator.dart';
import 'package:commemorate/view/widgets/extention/object_extension.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../helper/routes_helper.dart';
import '../../main.dart';
import 'dart:async';

import '../../utils/constant.dart';
import '../../view/widgets/custom_snackbar.dart';
import '../../view/widgets/show_message_dialog.dart';
import '../db/shared-preferences.dart';

// Dio Initialization
final Dio dio = Dio();

class ApiRepo {
  // Set BaseOption for Api Request
  Future<void> dioOption(
      {required Map<String, dynamic> headers, bool? multipart}) async {
    try {
      dio.options = BaseOptions(
          followRedirects: false,
          connectTimeout: multipart == true
              ? const Duration(minutes: 10)
              : const Duration(seconds: 60),
          sendTimeout: multipart == true
              ? const Duration(minutes: 10)
              : const Duration(seconds: 60),
          receiveTimeout: multipart == true
              ? const Duration(minutes: 10)
              : const Duration(seconds: 60),
          receiveDataWhenStatusError: true,
          headers: headers);
    } catch (e) {
      "Error $e".printLog;
    }
  }

  // ======================================================================
  //POST REQUEST
  // Getting four parameters
  // context => use for loader and navigation
  // screen =>  router name
  // url => url of the api
  // Map data => json data for api

  postRequest(String url, Map<String, dynamic> data, {bool? isFormData}) async {
    debugPrint(
        "Post Request=====================>>>\n${DateTime.now().toIso8601String()} \n URl : $url \n Request data : $data");

    // Get the bearer token which we have stored in sharedPreferences before
    /// NEED TO UPDATE WHEN MERGE
    String? bearerToken = await LocalDb.getBearerToken;
    debugPrint("Bearer token=====================>>>\n Token:$bearerToken");

    // Convert json (Map) to form data
    var formData = FormData.fromMap(data);

    // calling dioOption method to set base options

    await dioOption(headers: {
      HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    try {
      // Calling Api
      final response =
          await dio.post(url, data: isFormData == true ? formData : data);
      // return response back
      return response;
    } on DioException catch (exception) {
      // If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // GET REQUEST
  getRequest(String url, Map<String, dynamic> data) async {
    debugPrint(
        "Get Request=====================>>>\n${DateTime.now().toIso8601String()} \n URl : $url \n Request data : $data");
    final userId = await LocalDb.getUserId;
    debugPrint("User id : $userId");

    // Get the bearer token which we have stored in sharedPreferences before
    /// NEED TO UPDATE WHEN MERGE
    String? bearerToken = await LocalDb.getBearerToken;
    debugPrint("Bearer token=====================>>>\n Token:$bearerToken");

    // calling dioOption method to set base options
    await dioOption(headers: {
      HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    try {
      // Calling Api
      final response = await dio.get(url, queryParameters: data);

      // return response back
      return response;
    } on DioException catch (exception) {
      //If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // PUT REQUEST
  putRequest(String url, Map<String, dynamic> data) async {
    debugPrint(
        "Put Request=====================>>> \n${DateTime.now().toIso8601String()}\n URl : $url \n Request data : $data");

    // Get the bearer token which we have stored in sharedPreferences before
    String? bearerToken = await LocalDb.getBearerToken;
    debugPrint("Bearer token=====================>>>\n Token:$bearerToken");
    // calling dioOption method to set base options
    await dioOption(headers: {
      HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    try {
      // Calling Api
      final response = await dio.put(url, data: data);
      // return response back
      return response;
    } on DioException catch (exception) {
      // If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // DELETE REQUEST
  deleteRequest(String url, Map<String, dynamic> data) async {
    debugPrint(
        "Delete Request=====================>>>\n${DateTime.now().toIso8601String()} \n URl : $url \n Request data : $data");

    // Get the bearer token which we have stored in sharedPreferences before
    String? bearerToken = await LocalDb.getBearerToken;
    debugPrint("Bearer token=====================>>>\n Token:$bearerToken");

    // calling dioOption method to set base options
    await dioOption(headers: {
      HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    try {
      // Calling Api
      final response = await dio.delete(url, queryParameters: data);

      // return response back
      return response;
    } on DioException catch (exception) {
      // If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // POST MULTIPART REQUEST
  // POST MULTIPART REQUEST
  // When we are uploading Media  like (image,file,video,audio,etc)
  // then we are using multipart request

  multipartRequest(String url, Map<String, dynamic> data) async {
    debugPrint(
        "Multipart Request=====================>>>\n${DateTime.now().toIso8601String()} \n URl : $url \n Request data : $data");

    // Get the bearer token which we have stored in sharedPreferences before
    String? bearerToken = await LocalDb.getBearerToken;
    debugPrint("Bearer token=====================>>>\n Token:$bearerToken");

    // Convert json (Map) to form data
    var formData = FormData.fromMap(data);
    debugPrint("From data : $formData");

    // calling dioOption method to set base options
    await dioOption(multipart: true, headers: {
      HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    try {
      // Calling Api
      final response = await dio.post(url, data: formData,
          onSendProgress: (received, total) {
        if (total != -1) {
          var progress = (received / total);
          debugPrint("Progress  = $progress");
        }
      });
      // return response back
      return response;
    } on DioException catch (exception) {
      // If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // DOWNLOAD REQUEST
  downloadRequest(String url, String savePath) async {
    debugPrint(
        "Download Request=====================>>>\n${DateTime.now().toIso8601String()} \n URl : $url");

    // Get the bearer token which we have stored in sharedPreferences before
    // String? bearerToken = await LocalDb.getBearerToken;
    // debugPrint("Bearer token=====================>>>\n Token:$bearerToken");

    // calling dioOption method to set base options
    await dioOption(headers: {
      //HttpHeaders.authorizationHeader: "Bearer $bearerToken",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptEncodingHeader: "*"
    });

    int? percentage;
    try {
      // Calling Api
      final response = await Dio().download(
        url,
        savePath,
        onReceiveProgress: (rec, total) {
          // set progress to percentage variable
          percentage = ((rec / total) * 100).floor();
          "Percentage : $percentage".printLog;
        },
      );

      // return response back
      return response;
    } on DioException catch (exception) {
      // If Exception Occur calling dioError method to Handle the Exception
      return dioError(exception);
    }
  }

  // ======================================================================
  // Error Handling

  Future<dynamic> dioError(
    DioException exception,
  ) async {
    switch (exception.type) {
      case DioExceptionType.connectionError:
        showToast(
            message: AppConstant.internetConnectionMessage, isError: true);
        break;
      case DioExceptionType.cancel:
        showToast(message: AppConstant.requestCancelMessage, isError: true);

        break;
      case DioExceptionType.receiveTimeout:
        showToast(message: AppConstant.receiveTimeoutMessage, isError: true);

        break;
      case DioExceptionType.sendTimeout:
        showToast(message: AppConstant.sendTimeoutMessage, isError: true);

        break;
      case DioExceptionType.connectionTimeout:
        showToast(message: AppConstant.sendTimeoutMessage, isError: true);

        break;
      case DioExceptionType.badResponse:
        if (exception.response!.statusCode == 401) {
          showMessageDialog(
            isError: true,
            message: AppConstant.sessionExpiredMessage,
            onTap: () {
              goBack();
            },
          );
        } else if (exception.response!.statusCode == 502) {
          showMessageDialog(
              isError: true,
              message: AppConstant.appIsInMaintenanceMessage,
              onTap: () {
                goBack();
              });
        } else if (exception.response!.statusCode == 400 ||
            exception.response!.statusCode == 422 ||
            exception.response!.statusCode == 403) {
          return exception.response;
        } else {
          showToast(
              message: exception.response!.statusCode.toString(),
              isError: true);
        }

        break;
      default:
        showToast(message: AppConstant.badResponseMessage, isError: true);

        break;
    }
  }
}
