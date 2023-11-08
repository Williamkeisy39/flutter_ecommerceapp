import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecemmerceapp/components/my_drawer.dart';
import 'package:flutter_minimal_ecemmerceapp/components/my_product_tile.dart';
import 'package:flutter_minimal_ecemmerceapp/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access product in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shop Page"),
          centerTitle: true,
          actions: [
            // go to cart button
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/cart_page'),
                icon: const Icon(Icons.shopping_cart_checkout_outlined))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),
            //shop subtitle
            Center(
                child: Text(
              "Pick from the selected list of premium products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get each individual product
                    final product = products[index];

                    //return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
