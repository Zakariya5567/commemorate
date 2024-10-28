import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../provider/bottom_navigation_provider.dart';
import '../../../utils/colors.dart';
import '../../widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.whiteStatusBar,
      child: Consumer<BottomNavigationProvider>(
        builder: (context, controller, child) {
          return PopScope(
            canPop: controller.currentIndex == 0 ? true : false,
            onPopInvoked: (bool didPop) {
              if (controller.currentIndex != 0) {
                controller.resetIndex();
              }
            },
            child: Scaffold(
              body: controller.bottomNavigationIndex[controller.currentIndex],
              bottomNavigationBar: const BottomNavigation(currentIndex: 0),
            ),
          );
        },
      ),
    );
  }
}
