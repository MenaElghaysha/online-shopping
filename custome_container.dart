
import 'package:flutter/material.dart';
import 'constant.dart';


class  CustomContainer extends StatefulWidget {
  CustomContainer({super.key, this.text, this.state, required this.Select});
  final String? text ;
  int? state=3;
  late bool Select=false;

  //final VoidCallback? onPressed;
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  var isSelected=false;

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
    return GestureDetector(
      onTap: () {
          setState(() {
            //widget.onPressed!();
          if(widget.state==1){
            widget.Select=!widget.Select;}
          else if (widget.state==2){
            widget.Select=!widget.Select;
          }else if (widget.state==3){
            widget.Select=!widget.Select;
          }else if (widget.state==4){
            widget.Select=!widget.Select;
          }else if (widget.state==5){
            widget.Select=! widget.Select;
        }
          });
        },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, left: 26, bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 4),
        alignment: Alignment.center,
        width: 46,
        height: 45,
        decoration: BoxDecoration(
          color: widget.Select ? activeColor : inactiveColor ,
          borderRadius: BorderRadius.circular(10),
        ),
        // Change button text when light changes state.
        child: Text(widget.text.toString(), style:
        const TextStyle(color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            fontFamily: "Audiowide",
            letterSpacing: .5),),
      ),
    );
  }
}
