
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/admin/pages/Auth/Auth.dart';
import 'package:shop/admin/pages/Category/AddCategory.dart';
import 'package:shop/admin/pages/HomePage/HomePage.dart';
import 'package:shop/admin/pages/Product/AddProduct.dart';
import 'package:shop/admin/pages/Splace/SplaceScreen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/addProduct',
      builder: (BuildContext context, GoRouterState state) {
        return const AddProduct();
      },
    ),
    GoRoute(
      path: '/addCategory',
      builder: (BuildContext context, GoRouterState state) {
        return const AddCategory();
      },
    ),
    GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthPage();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplaceScreen();
      },
    ),
  ],
);
