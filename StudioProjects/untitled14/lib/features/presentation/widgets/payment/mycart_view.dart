import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/ulits/styles.dart';
import '../bottomsheet.dart';

// class mycartview extends StatelessWidget {
//   const mycartview({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back),
//         title: Text("MY Cart",
//           textAlign: TextAlign.center,
//           style: Styles.style25,
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(child: Image.asset('assets/images/Group.png')),
//           SizedBox(height: 10,),
//           orderInfoItem(),
//           orderInfoItem(),
//           orderInfoItem(),
//           SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Divider(
//               thickness: 2,
//               height: 34,
//
//               color:HexColor("#C7C7C7"),
//             ),
//           ),
//
//           Totalprice(),
//           Container(
//               width: 350,
//               height: 73,
//               decoration:     BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: HexColor("#3D7E80")),
//             child: Center(
//               child: MaterialButton(
//                 onPressed:(){
//                   // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>PaymentDetails()), (route){
//                   //   return false;
//                   // });
//                   showModalBottomSheet(
//                       context: context,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(16)),
//                       builder: (context) {
//                       return  PaymentMethodsBottomSheet();
//                         // return BlocProvider(
//                         //   create: (context) => PaymentCubit(CheckoutRepoImpl()),
//                         //   child: const PaymentMethodsBottomSheet(),
//                         // );
//                       });
//                 } ,
//                 child: Text(
//                     "Complete Payment",
//                     style: TextStyle(
//                       color:Colors.white,
//
//                       fontSize: 26,
//                       fontWeight: FontWeight.w500,
//                     )
//                 ),
//               ),
//             )
//           )
//         ],
//       ),
//     );
//   }
// }
class orderInfoItem extends StatelessWidget{
  const orderInfoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return
    Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Row(
        children: [
          Text(
            "order",style: Styles.style18,
          ),
          Spacer(),
          Text(
            r"$50",style: Styles.style18,
          )
        ],
      ),
    );



  }


}
class Totalprice extends StatelessWidget{
  const Totalprice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Row(
        children: [
          Text(
            "Total",style: Styles.style24,
          ),
          Spacer(),
          Text(
            "price",style: Styles.style24,
          )
        ],
      ),
    );
  }

}
class Total extends StatelessWidget {
  const Total({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


}
