import 'package:flutter/material.dart';

import '../widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: const [
            CartCardWidget(),
            CartCardWidget(),
            CartCardWidget(),
            CartCardWidget(),
            CartCardWidget(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Total Price: Ksh 1,000',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 40,
              width: 140,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: const Text(
                    'Order now',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
