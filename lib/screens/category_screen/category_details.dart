import 'package:ecommerceapp/const/consts.dart';
import 'package:ecommerceapp/screens/category_screen/item_details.dart';
import 'package:ecommerceapp/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) => "Baby Clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
              ),
            ),

            20.heightBox,

            //itmes container
            Expanded(child: GridView.builder(
              physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8,crossAxisSpacing: 8), itemBuilder: (context,index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imgP5,height: 150, width: 200, fit: BoxFit.cover),

                  "Laptop 4Gb/64Gb".text.fontFamily(semibold).color(darkFontGrey).make(),
                  10.heightBox,
                  "\$600".text.fontFamily(bold).color(redColor).size(16).make()
                ],
              ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {
                Get.to(()=> const ItemDetails(title: "Dummy Item"));
              });
            }))


          ],
        ),
      ),
    );
  }
}
