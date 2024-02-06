import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';
import 'package:store_app/services/put_update_product_service.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UpdateProductPage( product:product),
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 130,
            width: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title!.substring(0, 6),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r"$" "${product.price.toString()}"),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              product.image!,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
