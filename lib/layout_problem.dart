import 'package:flutter/material.dart';

class LayoutProblem extends StatelessWidget {
  const LayoutProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 6,
            color: Colors.pink,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                // shrinkWrap: true,
                children: [
                  Container(
                    height: 250,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    color: Colors.purple.shade300,
                  ),
                  Container(
                    height: 250,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    color: Colors.purple.shade300,
                  ),
                  Container(
                    height: 250,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    color: Colors.purple.shade300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
