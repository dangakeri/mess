import 'package:flutter/material.dart';

import '../widgets/food_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 8.0, // spacing between rows
                    crossAxisSpacing: 8.0, // spacing between columns
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return const FoodWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
