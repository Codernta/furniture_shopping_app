import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String itemPrice;

  const CardWidget({
    Key? key,
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(itemImage),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(itemName,
                      style: TextStyle(
                          color: Colors.orangeAccent[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  trailing: Text(
                    itemPrice,
                    style: TextStyle(color: Colors.orangeAccent[700]),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
