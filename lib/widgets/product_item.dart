import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          header: Container(
            decoration: BoxDecoration(color: Colors.white70),
            constraints: BoxConstraints(maxWidth: double.minPositive),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              '\$ $price',
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: id,
              );
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
