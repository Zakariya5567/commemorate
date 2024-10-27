class AppConstant {
  static const String signInText = "Sign In";

  // Exception
  static const String internetConnectionMessage =
      "Check your internet connection";
  static const String requestCancelMessage =
      "Request to API server was cancelled";
  static const String receiveTimeoutMessage = "Receive timeout error";
  static const String sendTimeoutMessage = "Send timeout error";
  static const String connectionTimeoutMessage = "Connection timeout error";
  static const String badResponseMessage = "Something went Wrong";
  static const String appIsInMaintenanceMessage =
      "App is in maintenance mood. Please try again in 15 minutes.";
  static const String sessionExpiredMessage = "Session Expired";
  static const String badRequestMessage = "Error 400 Bad Request";
  static const String forbiddenMessage = "Error 403 Forbidden";
  static const String notFoundMessage = "Error 404 Not Found";
  static const String serverError = "500 Server Error";
  static const String tryAgain = "Try Again";

  static const int ok = 200;
  static const int notFound = 404;
  static const int forbidden = 403;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int internalServerError = 500;

//
  static const double designHeight = 844;
  static const double designWidth = 390;
}
