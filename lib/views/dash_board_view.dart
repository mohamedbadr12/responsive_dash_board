import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_layout_desktop.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState>scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey ,
      appBar: MediaQuery.sizeOf(context).width<SizeConfig.tablet ?AppBar(
        leading: IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();

        },
            icon: const Icon(Icons.menu)),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
      ):null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width<SizeConfig.tablet?const CustomDrawer():null,
      body: AdaptiveLayout(mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout:(context)=> const DashBoardLayoutDesktop()),
    );
  }
}
