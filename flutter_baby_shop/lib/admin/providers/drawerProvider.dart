import 'package:flutter/material.dart';
import 'package:shop/admin/pages/Category/CategoryPage.dart';
import 'package:shop/admin/pages/Coupon/CouponPage.dart';
import 'package:shop/admin/pages/Dashboard/Dashboard.dart';
import 'package:shop/admin/pages/Product/ProductPage.dart';
import 'package:shop/admin/pages/Settings/SettingsPage.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 1;
  var pages = [
    DashBoard(),
    ProductPage(),
    CategoryPage(),
    CouponPage(),
    SettingsPage(),
  ];
  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
