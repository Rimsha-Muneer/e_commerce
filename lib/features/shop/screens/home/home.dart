import 'package:e_commerce_app/common/widgets/customshapes/containers/circular_Container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/containers/curved_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurvedEdges(),
              child: Container(
                color: Colors.tealAccent,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                    Positioned(
                      top: -150,
                      right: -200,
                      child: CircularContainer(backgroundcolor: Colors.white.withOpacity(0.1))),
                      
                      Positioned(
                        top: -100,
                      right: -300,
                        child: CircularContainer(backgroundcolor: Colors.white.withOpacity(0.1))),
                        Column(
                          
                        )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
