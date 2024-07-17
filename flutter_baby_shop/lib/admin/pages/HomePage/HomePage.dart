import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/admin/providers/drawerProvider.dart';
import 'package:shop/admin/widgets/AppBar.dart';
import 'package:shop/admin/widgets/MyDrawer.dart';
import 'package:shop/admin/widgets/ResponsiveLayout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: isDesktop ? null : MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              if (isDesktop) Expanded(child: MyDrawer()),
              SizedBox(width: 10),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    MyAppBar(),
                    // SizedBox(height: 10),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Consumer<DrawerProvider>(
                          builder: (context, value, child) =>
                              value.pages[value.selectedPageIndex],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
