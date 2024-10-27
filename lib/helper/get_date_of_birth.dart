import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../main.dart';
import '../utils/colors.dart';

Future<String?> selectDatePicker({DateTime? preSelectedDate}) async {
  DateTime selectedDate = preSelectedDate ?? DateTime.now();
  DateTime? picked = await showDatePicker(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context, Widget? child) {
        return StatefulBuilder(builder: (context, state) {
          return Theme(
            data: ThemeData(
              useMaterial3: false,
              primarySwatch:
                  const MaterialColor(0x219942, AppColors.primaryColor),
              splashColor: AppColors.greyPrimary,
              textTheme: TextTheme(
                titleMedium: const TextStyle(color: AppColors.greyPrimary),
                headlineMedium:
                    TextStyle(fontSize: 24.h, fontWeight: FontWeight.bold),
                labelLarge: const TextStyle(color: AppColors.greyPrimary),
              ),
              colorScheme: const ColorScheme.light(
                  primary: AppColors.greenPrimary,
                  onSecondary: AppColors.greyPrimary,
                  onPrimary: AppColors.whitePrimary,
                  surface: AppColors.greyPrimary,
                  onSurface: AppColors.greyPrimary,
                  secondary: AppColors.greyPrimary),
              dialogBackgroundColor: AppColors.whitePrimary,
            ),
            child: child ?? const Text(""),
          );
        });
      },
      keyboardType: TextInputType.text,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now());
  if (picked != null) {
    selectedDate = picked;
    selectedDate;
    String date = DateFormat('yyyy-MM-dd').format(selectedDate);
    return date;
  } else {
    return null;
  }
}
