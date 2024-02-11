import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled14/features/presentation/widgets/payment/paymentDetails.dart';

import '../../../../payment1.dart';
import 'mycart_view.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xffd9d9d9),
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) =>PaymentDetails()),);

        },
            child: Icon(Icons.arrow_back,size: 40,)),
      ),
        body:Stack(
          children: [

            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Center(
                child: Container(
                    width: 350,
                    height: 672,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffd9d9d9)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:80.0),
                        child: Text(
                            "Thank you!",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ),
                      Text(
                          "Your transaction was successful",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0,left:8,right:8,bottom: 8),
                        child: orderInfoItem(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: orderInfoItem(),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: orderInfoItem(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2,
                          height: 34,

                          color:HexColor("#C7C7C7"),
                        ),
                      ),
                      Totalprice(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            width: 305,
                            height: 73,
                            decoration:     BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white)
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 0,
                        color:HexColor("#C7C7C7"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:30.0,left:30),
                        child: Divider(
                          thickness: 2,
                          height: 34,

                          color:HexColor("#C7C7C7"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 550,
              left:190,
              child: Image.asset(
                "assets/images/Group1.png",
                // width: 100,
                // height: 100,
              ),
            ),
            Positioned(
              top: 500,
              right:60,
              child: CircleAvatar(
backgroundColor: Colors.white,            ),
            ),
            Positioned(
              top: 500,
              left:60,
              child: CircleAvatar(
                backgroundColor: Colors.white,            ),
            )

          ],
        )
    );

  }
}
