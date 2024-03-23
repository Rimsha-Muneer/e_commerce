import "package:e_commerce_app/features/shop/screens/home/home.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NaviationController());
    return Scaffold(
      bottomNavigationBar:Obx(
        ()=> NavigationBar(
          height: 80.0,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value=index,
          
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        
        ]),
      ) ,
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
    
  }
}
class NaviationController extends GetxController{
  final Rx<int> selectedIndex= 0.obs;
  final screens = [
   HomeScreen(),
     Container(color: Colors.green),
      Container(color: Colors.red),
       Container(color: Colors.pink),
  ];
}