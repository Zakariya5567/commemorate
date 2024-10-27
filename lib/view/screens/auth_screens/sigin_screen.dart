import 'package:commemorate/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../provider/authentication_provider.dart';
import '../../../utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.whiteStatusBar,
      child: Consumer<AuthProvider>(
        builder: (context, controller, child) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.whitePrimary,
            body: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
