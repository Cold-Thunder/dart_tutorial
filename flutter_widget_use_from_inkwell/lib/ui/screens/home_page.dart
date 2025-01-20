import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/all_dialog_widget_uses/all_dialog_widget_uses.dart';
import 'package:widgets_use/ui/widgets_use/animation/animation.dart';
import 'package:widgets_use/ui/widgets_use/bottom_navigation_bar/flutter_bottom_navigation.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/clip_path_use.dart';
import 'package:widgets_use/ui/widgets_use/elevated_button_use.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';
import 'package:widgets_use/ui/widgets_use/card_widget_use.dart';
import 'package:widgets_use/ui/widgets_use/checkbox_radiobutton_uses/radiobutton_used.dart';
import 'package:widgets_use/ui/widgets_use/checkbox_radiobutton_uses/use_check_checkboxlisttile.dart';
import 'package:widgets_use/ui/widgets_use/flutter_bottom_sheet/flutter_bottom_sheet_use.dart';
import 'package:widgets_use/ui/widgets_use/flutter_date_picker/flutter_date_picker_use.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/flutter_page_view_use.dart';
import 'package:widgets_use/ui/widgets_use/flutter_sliveappbar_widget/flutter_sliverappbar_widget.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/flutter_tabbar_widget_use.dart';
import 'package:widgets_use/ui/widgets_use/form_text_field/flutter_form_text_field.dart';
import 'package:widgets_use/ui/widgets_use/gesture_detector_use.dart';
import 'package:widgets_use/ui/widgets_use/gridview_widget_uses/gridview_widget_uses.dart';
import 'package:widgets_use/ui/widgets_use/image_slider/image_slider_use.dart';
import 'package:widgets_use/ui/widgets_use/inkwell_use.dart';
import 'package:widgets_use/ui/widgets_use/layoutbuilder_widget_use/layoutbuilder_widget_uses.dart';
import 'package:widgets_use/ui/widgets_use/list_wheel_scroll_view/list_wheel_scroll_view.dart';
import 'package:widgets_use/ui/widgets_use/progress_bar_widget.dart';
import 'package:widgets_use/ui/widgets_use/slider/slider_use.dart';
import 'package:widgets_use/ui/widgets_use/stack_use/stack_widget_use.dart';
import 'package:widgets_use/ui/widgets_use/tool_tip_use.dart';
import 'package:widgets_use/ui/widgets_use/use_snackbar.dart';
import 'package:widgets_use/ui/widgets_use/uses_of_flutter_switch/flutter_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text('HomePage',
              style: TextStyle(fontSize: 22, color: Colors.white))),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              ElevatedButtonUse(
                  title: 'Use of SnackBar', screen: UseSnackbar()),
              ElevatedButtonUse(title: 'Use of ToolTip', screen: ToolTipUse()),
              ElevatedButtonUse(
                  title: 'Use of GestureDetector',
                  screen: GestureDetectorUse()),
              ElevatedButtonUse(title: 'Use of Inkwell', screen: InkWellUse()),
              ElevatedButtonUse(title: "Card Use", screen: CardWidgetUse()),
              TextButton(
                  style: TextButton.styleFrom(
                      elevation: 3, shadowColor: Colors.blue),
                  onPressed: () {
                    debugPrint("Text Button");
                  },
                  child: Text('Text Button Example',
                      style: TextStyles.headingStyle
                          .copyWith(color: Colors.black))),
              OutlinedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Outlined Button');
                    }
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 3,
                      shadowColor: Colors.red,
                      backgroundColor: Colors.blue,
                      side: BorderSide(
                        width: 3,
                        color: Colors.red,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: Size.fromHeight(55)),
                  child: Text('Outlined Button',
                      style: TextStyles.headingStyle
                          .copyWith(color: Colors.black))),
              ElevatedButtonUse(
                  title: 'Progress Bar', screen: ProgressBarUse()),
              ElevatedButtonUse(title: "Radio Use", screen: RadiobuttonUsed()),
              ElevatedButtonUse(
                  title: "Checkbox Use", screen: UseCheckCheckboxlisttile()),
              ElevatedButtonUse(title: "Switch Use", screen: FlutterSwitch()),
              ElevatedButtonUse(title: "Slider", screen: SliderUse()),
              ElevatedButtonUse(title: "List Wheel", screen: ListWheelScrollViewUse()),
              ElevatedButtonUse(title: "Form Text Field", screen: FlutterFormTextField()),
              ElevatedButtonUse(title: "Stack Widget Use", screen: StackWidgetUse()),
              ElevatedButtonUse(title: "Date Picker Use", screen: FlutterDatePickerUse()),
              ElevatedButtonUse(title: "Bottom Sheet Use", screen: FlutterBottomSheetUse()),
              ElevatedButtonUse(title: "Bottom Navigation Bar", screen: FlutterBottomNavigation()),
              ElevatedButtonUse(title: "Dialog Widget", screen: AllDialogWidgetUses()),
              ElevatedButtonUse(title: "PageView Widget Use", screen: FlutterPageViewUse()),
              ElevatedButtonUse(title: "GridView Widget Use", screen: GridviewWidgetUses()),
              ElevatedButtonUse(title: "Tabbar Widget Use", screen: FlutterTabbarWidgetUse()),
              ElevatedButtonUse(title: "Sliver Appbar", screen:FlutterSliverappbarWidget()),
              ElevatedButtonUse(title: "LayoutBuilder Widget", screen:LayoutbuilderWidgetUses()),
              ElevatedButtonUse(title: "Image Slider", screen:ImageSliderUse()),
              ElevatedButtonUse(title: "Animation", screen: AnimationUses()),
              ElevatedButtonUse(title: "Clip Path Use", screen: ClipPathUse())
            ],
          ),
        ),
      ),
    );
  }
}
