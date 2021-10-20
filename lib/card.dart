

import 'package:flutter/material.dart';

// class CardContainer extends StatefulWidget {
//   const CardContainer({ Key? key }) : super(key: key);

//   @override
//   _CardContainerState createState() => _CardContainerState();
// }

// class _CardContainerState extends State<CardContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

Widget CardContainer(BuildContext context) {
  return Card(
      shadowColor: Colors.grey[300],
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: SizedBox(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(10),
                child: const Text('data'),
              )
            ],
          )));
}
