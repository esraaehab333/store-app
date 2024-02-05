import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/put_update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_filed.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({
    super.key,
    required this.product
  });

  String? productName, desc, image;
  String? price;
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Update Product",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CustomTextFiled(
                onChanged: (data) {
                  productName = data;
                },
                hintText: "Product Name",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                hintText: "Description",
                onChanged: (data) {
                  desc = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                hintText: "Price",
                onChanged: (data) {
                  price = data;
                },
                type: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                hintText: "Image",
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                lable: "Update",
                onTap: () {
                  UpdateProduct().addProduct(
                    title: productName!,
                    price: price!,
                    desc: desc!,
                    image: image!,
                    category: product.category!
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
