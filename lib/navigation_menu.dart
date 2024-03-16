import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: 0,
        destinations: const[
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.category), label: 'Categories'),
          NavigationDestination(icon: Icon(Icons.chat), label: 'chat'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
