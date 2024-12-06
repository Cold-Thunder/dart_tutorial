import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/job_type_card.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class NewHiringCard extends StatelessWidget{
  final String _image;
  final String _title;
  final String _subtitle;
  final List _jobTypes;

  NewHiringCard({required String image, required String title, required String subtitle, required List jobTypes}):
      _image = image, _title = title, _subtitle = subtitle, _jobTypes = jobTypes;


  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
        margin:const EdgeInsets.only(bottom: 10),
      child: ListTile(
      leading: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle
        ),
        padding: const EdgeInsets.all(15),
        child: Image.network(_image,
          fit: BoxFit.cover
        ),
      ),

      trailing: Container(
        width: 10,
        child: PopupMenuButton(
            iconColor: Colors.grey,
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                    value: 'Item Value',
                    onTap: (){
                      print('item');
                    },
                    child: Text('Item')
                )
              ];
            }
        )
      ),
      title: Text(_title,
          style: pageHeading.copyWith(fontSize: 16)
      ),
      subtitle: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(_subtitle,
                style: pageNormalText
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: _jobTypes.map((item){
                return JobTypeCard(title: item);
              }).toList()
            )
          )
        ],
      ),
      )
    );
  }
}