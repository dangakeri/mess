import 'package:flutter/material.dart';

import '../screens/innerScreens/product_details.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) => const ProductDetailsPage()),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 8,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              border: Border.all(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 145,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/chapati.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Chapati',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'KSH 200',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
