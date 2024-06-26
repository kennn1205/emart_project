import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:megamall_project/consts/colors.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/consts/list.dart';
import 'package:megamall_project/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemsDetails extends StatefulWidget {
  final String title;
  const ItemsDetails({super.key, required this.title});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: widget.title.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //swiper section
                  VxSwiper.builder(
                      autoPlay: true,
                      autoPlayAnimationDuration: 1.seconds, // thời gian cuộn
                      autoPlayCurve: Curves.linear, // tốc độ cuộn
                      enableInfiniteScroll: true, // vô hạn cuộn
                      height: 350,
                      aspectRatio: 16 / 9, // tỉ lệ 16:9
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(imgFc5,
                            width: double.infinity, fit: BoxFit.fill);
                      }),
                  20.heightBox,
                  //title and detail section

                  widget.title.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    size: 25,
                    stepInt: true,
                    count: 5,
                  ),
                  10.heightBox,
                  "\$30,000 "
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In House Brands"
                              .text
                              .white
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .size(18)
                              .make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),

                  //color section
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(35, 35)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .make()),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //quantity section
                      Row(
                        children: [
                          SizedBox(
                            width: 95,
                            child: "Quantity".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Icon(Icons.remove),
                              ),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              TextButton(
                                onPressed: () {},
                                child: const Icon(Icons.add),
                              ),
                              10.widthBox,
                              "0 available".text.color(textfieldGrey).make(),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          SizedBox(
                            width: 95,
                            child: "Total".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make(),
                        ],
                      )
                          .box
                          .padding(const EdgeInsets.only(
                              left: 8, right: 8, top: 8, bottom: 8))
                          .make(),
                    ],
                  ).box.white.shadowSm.make(),
                  //description section
                  10.heightBox,
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is a very good product. It is very useful for you"
                      .text
                      .color(textfieldGrey)
                      .make(),

                  //button section
                  10.heightBox,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true, // giúp listview không chiếm hết chiều cao
                    children: List.generate(
                        itemDetailButtonsList.length,
                        (index) => ListTile(
                              title: itemDetailButtonsList[index]
                                  .text
                                  .color(darkFontGrey)
                                  .fontFamily(semibold)
                                  .make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )),
                  ),
                  20.heightBox,
                  //products may like section
                  productsyoumaylike.text
                      .color(darkFontGrey)
                      .size(16)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  //widget copy từ home screen featured product
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imgP1,
                                      width: 150, fit: BoxFit.fill),
                                  10.heightBox,
                                  'Laptop 4GB/64GB'
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  5.heightBox,
                                  '\$600'
                                      .text
                                      .fontFamily(bold)
                                      .color(redColor)
                                      .size(16)
                                      .make(),
                                ],
                              )
                                  .box
                                  .white
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .roundedSM
                                  .padding(const EdgeInsets.all(8))
                                  .make()),
                    ),
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            width:
                double.infinity, // double.infinity là để chiếm hết chiều rộng
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: 'Add to Cart'),
          ),
        ],
      ),
    );
  }
}
