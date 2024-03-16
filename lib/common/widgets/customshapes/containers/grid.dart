import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class CircularGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Grid View with ListView'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                icon: Icon(
                  _getIconData(index),
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle icon tap here
                },
              ),
              // Adding ListView.builder within each CircleAvatar
              // to create a list inside each grid item
              child: ListView.builder(
                itemCount: 5, // Number of items in the list
                itemBuilder: (context, listIndex) {
                  return ListTile(
                    leading: Icon(Icons.star), // Example icon
                    title: Text('Item $listIndex'), // Example text
                    onTap: () {
                      // Handle list item tap here
                    },
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }

  IconData _getIconData(int index) {
    switch (index) {
      case 0:
        return Iconsax;
      case 1:
        return Iconsax;
      case 2:
        return Iconsax;
      case 3:
        return Iconsax;
      case 4:
        return Iconsax;
      case 5:
        return Iconsax;
      case 6:
        return Iconsax;
      case 7:
        return Iconsax;
      case 8:
        return Iconsax;
      default:
        return Iconsax;
    }
  }
}
