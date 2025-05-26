import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../viewmodel/nav_viewmodel.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<NavViewModel>(context);

    return BottomNavigationBar(
      currentIndex: viewModel.currentIndex,
      onTap: (index) {
        viewModel.changeIndex(index);
        // Optionally add navigation logic here
      },
      items: viewModel.navItems.map((item) => BottomNavigationBarItem(
        icon: SvgPicture.asset(
          item.iconPath,
          colorFilter: ColorFilter.mode(
            viewModel.currentIndex == viewModel.navItems.indexOf(item)
                ? Theme.of(context).primaryColor
                : Colors.grey,
            BlendMode.srcIn,
          ),
          height: 24,
        ),
        label: item.label,
      )).toList(),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: const Color(0xFF23252B),
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
    );
  }
}