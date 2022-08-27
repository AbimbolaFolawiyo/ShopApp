import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
// import '../providers/products.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';
import './cart_screen.dart';
import '../widgets/app_drawer.dart';

enum FilterOptions {
  Favorites,
  All,
}

// ignore: use_key_in_widget_constructors
class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    // final productContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tee Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  // productContainer.showFavoritesOnly();
                  showOnlyFavorites = true;
                } else {
                  // productContainer.showAll();
                  showOnlyFavorites = false;
                }
              });
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                  value: FilterOptions.Favorites,
                  child: Text('Only Favotites')),
              const PopupMenuItem(
                  value: FilterOptions.All, child: Text('Show All')),
            ],
          ),

          Consumer<Cart>(
            builder: (_, cart, ch) {
              return Badge(
                child: ch!,
                value: cart.itemCount.toString(),
              );
            },
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          // Consumer<Cart>(
          //   builder: (_, cart, ch) {
          //     return Badge(
          //       child: ch!,
          //       value: cart.itemCount.toString(),
          //     );
          //   },
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.shopping_cart,
          //     ),
          //   ),
          // ),
        ],
      ),
      drawer: const AppDrawer(),
      body: ProductGrid(showOnlyFavorites),
    );
  }
}
