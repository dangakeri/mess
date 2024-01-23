import 'package:flutter/material.dart';

import '../cart_page.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).textSelectionTheme.selectionColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Chapati',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textSelectionTheme.selectionColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/chapati.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.small(
                  shape: const CircleBorder(),
                  onPressed: () {},
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '20',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton.small(
                  shape: const CircleBorder(),
                  onPressed: () {},
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Chapati',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textSelectionTheme.selectionColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'in stock',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Chapati Description',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textSelectionTheme.selectionColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).textSelectionTheme.selectionColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Price KSH 200',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textSelectionTheme.selectionColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const CartPage()),
                  );
                },
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
