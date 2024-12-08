
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';
import 'package:project1/projects/ui_design_two/widgets/button.dart';

class BookingItemTile extends StatelessWidget{
  final Map cardDetails;
  const BookingItemTile({required this.cardDetails, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1,2),
            spreadRadius: 1,
            blurRadius: 3
          )
        ],
      ),
      child:
      ListTile(
      minTileHeight: 100,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      leading: Container(
        height: 150,
        child: Image.asset(
          cardDetails['image'],
          fit: BoxFit.fill
        )
      ),
      title: Text(cardDetails['title']),
      titleTextStyle: headingTextStyle.copyWith(fontSize: 18),
      subtitle: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(top: 0),
        height: 70,
        child: Column(
          // direction: Axis.vertical,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Price: ${cardDetails['price']}',
                    style: searchTextTypeStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                )),
            Expanded(
              flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Text('Date: ${cardDetails['date']}', style: searchTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 14
                        ))
                    ),
                    CustomButton()
                  ]
                )
            )
          ],
        )
      ),
      )
    );
  }
}