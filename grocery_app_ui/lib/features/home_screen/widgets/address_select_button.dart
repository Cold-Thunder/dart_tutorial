import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class AddressSelectButton extends StatefulWidget {
  final Map<String, dynamic> groupVal;
  final Map<String, dynamic> address;
  final Function? onChangedMethod;
  final FocusNode? focusNode;
  const AddressSelectButton({
    this.onChangedMethod,
    this.focusNode,
    required this.address,
    required this.groupVal, super.key});

  @override
  State<AddressSelectButton> createState() => _AddressSelectButtonState();
}

class _AddressSelectButtonState extends State<AddressSelectButton> {



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        if(widget.onChangedMethod != null){
          widget.onChangedMethod!(widget.address);
        }
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 15),
        height: 109,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AllColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1,1),
              color: AllColors.barGrey,
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // radio button
            SizedBox(
              height: 20,
              width: 20,
              child: Radio(
                  value: widget.address,
                  groupValue: widget.groupVal,
                  onChanged: (value){
                    if(widget.onChangedMethod != null){
                      widget.onChangedMethod!(value);
                    }
                    Navigator.pop(context);
                  },
                focusNode: widget.focusNode,
                autofocus: true,
                activeColor: AllColors.mainGreen,
                fillColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> state){
                      if(state.contains(WidgetState.selected)){
                        return AllColors.mainGreen;
                      }
                        return AllColors.inputOutlineGrey;

                }),
              ),
            ),
            const SizedBox(
              width: 10
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    widget.address['addressTitle'],
                  style: AllTextStyles.searchScreenHeading
                ),
                const SizedBox(height: 5),
                Text(
                    widget.address['address'],
                  style: AllTextStyles.searchHintText.copyWith(
                    color: AllColors.fontBlack
                  ),
                  maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                ),
              ],
            ),

          ],
        )
      ),
    );
  }
}
