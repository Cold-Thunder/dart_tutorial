import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class TweenAnimationUse extends StatefulWidget {
  const TweenAnimationUse({super.key});

  @override
  State<TweenAnimationUse> createState() => _TweenAnimationUseState();
}

class _TweenAnimationUseState extends State<TweenAnimationUse> with SingleTickerProviderStateMixin{
  late Animation _animation;
  late AnimationController _animCont;
  bool increase = false;

  @override
  void initState(){
    super.initState();

    _animCont = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 100.0, end: 300.0).animate(_animCont);

    _animCont.addListener((){
        setState((){});
    });

  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Use')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                  InkWell(
                    onTap: (){
                      if(increase == false){
                        _animCont.forward();
                        setState((){
                          increase = true;
                        });
                      }else{
                        _animCont.reverse(from: 300.0);
                        setState((){
                          increase = false;
                        });
                      }
                    },
                    child: Container(
                      height: _animation.value,
                      width: _animation.value,
                      color: AllColors.gerRed
                    ),
                  )
              ]
            )
          )
        )
      )
    );
  }
}
