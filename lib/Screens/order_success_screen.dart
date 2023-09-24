import 'package:ecommerceui/Screens/navigation_screen.dart';
import 'package:flutter/material.dart';

import '../Widgets/container_button_model.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            children: [
              Image.asset('images/success-icon-10.png',
                height: 240,
              ),
              SizedBox(height: 15,),
              Text('Success!',
              style: TextStyle(
                 fontSize: 40,
                fontWeight: FontWeight.w600,
                letterSpacing: 1

              ),),
              SizedBox(height: 20,),

              Text('Your order will be delivered soon',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,

                  )

              ),

              Text('Thank You! for choosing our app',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,

                  )

              ),

            ],
          ),
          SizedBox(height: 40,),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>NavigationScreen()));

            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ContainerButtonModel(
                itex: 'Continue Shopping',
                containerWidth:MediaQuery.of(context).size.width,
                bgColor: Color(0xFFDB3022),

              ),
            ),
          )
        ],
      ),

    );
  }
}
