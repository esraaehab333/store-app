import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/put_update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_filed.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key, required this.product});

  ProductModel product;

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                const SizedBox(
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
                  onTap: ()async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await UpdateProduct().addProduct(
                        id: widget.product.id!,
                          title: productName==null? widget.product.title! : productName!,
                          price: price == null ? widget.product.price.toString(): price!,
                          desc: desc == null ? widget.product.description !:desc!,
                          image: image == null ? widget.product.image!:image!,
                          category: widget.product.category!);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
