import 'package:dalel_app/features/home/data/presentation/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utls/app_assets.dart';
import '../../../../../core/utls/app_color.dart';
import '../../../../cart/presentation/view/cart_view.dart';
import '../views/home_view.dart';
import '../../../../profile/presentation/views/profile_view.dart';
import '../../../../search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style13,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    ),
    const CartView(),
    const SearchView(),
    const ProfileView()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.homeActive,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(Assets.home),
    ),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.cartActive,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.cart,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.searchActive,
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.search,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.userActive,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.user,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
    ),
  ];
}
