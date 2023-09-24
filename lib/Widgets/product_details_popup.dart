import 'package:ecommerceui/Widgets/container_button_model.dart';
import 'package:flutter/material.dart';

import '../Screens/CartScreen.dart';

class ProductDetailsPopUp extends StatefulWidget {
  const ProductDetailsPopUp({super.key});

  @override
  State<ProductDetailsPopUp> createState() => _ProductDetailsPopUpState();
}

class _ProductDetailsPopUpState extends State<ProductDetailsPopUp> {
  final isStyle = TextStyle(
      color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18);
  List<Color> clrs = [Colors.red, Colors.green, Colors.indigo, Colors.amber];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Size',
                                  style: isStyle,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Color',
                                  style: isStyle,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Total',
                                  style: isStyle,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'S',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'M',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'L',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'XL',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      for (var i = 0; i < 4; i++)
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6),
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              color: clrs[i],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '-',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '1',
                                      style: isStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '+',
                                      style: isStyle,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Payment',
                              style: isStyle,
                            ),
                            Text(
                              '\$40.00',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFDb3022)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>CartScreen()));


                          },
                          child: ContainerButtonModel(
                            containerWidth: MediaQuery.of(context).size.width,
                            itex: 'Checkout',
                            bgColor: Color(0xFFDb3022),
                          ),
                        )
                      ],
                    ),
                  ),
                ));
      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itex: 'Buy Now',
        bgColor: Color(0xFFDB3022),
      ),
    );
  }
}
