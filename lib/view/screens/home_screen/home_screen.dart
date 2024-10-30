import 'package:commemorate/view/widgets/custom_appbar.dart';
import 'package:commemorate/view/widgets/funeral_drawer.dart';
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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.greyStatusBar,
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
              key: scaffoldKey,
              drawer: const FuneralDrawer(),
              appBar: CustomAppBar(onDrawerTap: () {scaffoldKey.currentState!.openDrawer();},),
              body: controller.bottomNavigationIndex[controller.currentIndex],
              bottomNavigationBar: const BottomNavigation(currentIndex: 0),
            ),
          );
        },
      ),
    );
  }
}
