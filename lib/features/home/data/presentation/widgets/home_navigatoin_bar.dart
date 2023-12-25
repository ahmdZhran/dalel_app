import 'package:dalel_app/features/cart/presentation/view/cart_view.dart';
import 'package:dalel_app/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      screens: const [],
    );
  }
}

List<Widget> _buildScreens() {
  return [const HomeView(), const CartView()];
}
