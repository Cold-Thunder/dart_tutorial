import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class AllDialogWidgetUses extends StatelessWidget {
  const AllDialogWidgetUses({super.key});

  alertDialogBoxShow(context){
    return showDialog(
        context: context, builder: (context){
          return AlertDialog(
            backgroundColor: AllColors.black,
            title: Text('This is alert Dialog'),
            titleTextStyle: TextStyle(
              fontSize: 22,
              color: AllColors.white
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                      'Cancel',
                      style:TextStyle(
                          fontSize: 16,
                          color: AllColors.bdRed
                      )
                  )
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Ok', style: TextStyle(
                  fontSize: 16,
                  color: AllColors.bdGreen
                ))
              ),

            ],
          );
    }
    );
  }

  showCustomDialog(context){
    return showDialog(
        context: context,
        builder: (context){
          return Dialog(
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 300,
              width: 350,
                decoration: BoxDecoration(
                  color: AllColors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('This is custom dialog', style: TextStyle(
                    fontSize: 22,
                    color: AllColors.white
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:[
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Cancel', style: TextStyle(
                          fontSize: 22,
                          color: AllColors.gerRed
                        ),),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Ok', style: TextStyle(
                          fontSize: 22,
                          color: AllColors.white
                        ))
                      )
                    ]
                  )
                ]
              )
            )
          );
        }
    );
  }

  useShowGeneralDialog(context){
    try{
      return showDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel: 'Dismiss Dialog',
          builder: (context){
            return Center(
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                    height: 600,
                    width: 350,
                    decoration: BoxDecoration(
                        color: AllColors.purple,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('showGeneralDialog method is used', style: TextStyle(
                            fontSize: 22,
                            color: AllColors.white
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel', style: TextStyle(
                                  fontSize: 18,
                                  color: AllColors.gerYellow
                                ),),
                              ),
                              TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text('Ok', style: TextStyle(
                                  fontSize: 18,
                                  color: AllColors.white
                                ))
                              )
                            ]
                          )
                        ]
                    )
                ),
              ),
            );
          }
      );
    }catch(err){
      debugPrint(err.toString());
    }
  }



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog widget use'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              ElevatedButton(
                  onPressed: (){
                    alertDialogBoxShow(context);
                  },
                  child: Text('Show Alert Dialog')
              ),
              ElevatedButton(
                  onPressed: (){
                    showCustomDialog(context);
                  },
                  child: Text('Show Custom Dialog')
              ),
              ElevatedButton(
                onPressed: (){
                    useShowGeneralDialog(context);
                },
                child: Text('Use showDialog with Material')
              )
            ]
          )
        )
      )
    );
  }
}
