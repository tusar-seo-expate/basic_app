import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  final Color? color;
  final OutlinedBorder? shape;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final dynamic minWidth;
  final dynamic minHeight;
  final dynamic onPressed;
  final AlignmentGeometry alignment;

  const Buttons({Key? key, this.color = const Color.fromARGB(0, 0, 0, 0),
    this.shape = const RoundedRectangleBorder(),
    required this.child,
    this.alignment = Alignment.center,
    this.padding = EdgeInsets.zero,
    this.minHeight,
    this.minWidth,

    this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return _basic();
  }


  Widget _basic() {
    //if (width != null && height != null)
    return TextButton(
      style: TextButton.styleFrom(
          // foregroundColor: ThemeConfig.fontColor,
          padding: padding,
          backgroundColor: color,
          minimumSize: minWidth == null ? null : Size(
              minWidth.toDouble(), minHeight ?? 10),
          alignment: alignment,
          shape: shape),
      onPressed: onPressed,
      child: child,
    );
  }
  Widget get small=> TextButton(
      style: TextButton.styleFrom(
          // foregroundColor: ThemeConfig.fontColor,
          padding: padding,
          backgroundColor: color,
          fixedSize:minWidth!=null && minHeight !=null ?Size( minWidth,minHeight):null,
          alignment: alignment,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: shape),
      onPressed: onPressed,
      child: child,
    );

  Widget  round(radius)=> TextButton(
      style: TextButton.styleFrom(
          // foregroundColor: ThemeConfig.fontColor,
          padding: padding,
          backgroundColor: color,
          // fixedSize: Size( minWidth,minHeight),
          fixedSize: minWidth == null ? null : Size(
              minWidth.toDouble(), minHeight ?? 10),
          alignment: alignment,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
      onPressed: onPressed,
      child: child,
    );

  static Widget minSize({required width,
    required double height,
    color,
    shape,
    child,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    dynamic onPressed}) {
    return TextButton(

      style: TextButton.styleFrom(
          padding: padding,
          foregroundColor: ThemeConfig.noColor,
          minimumSize: Size(width.toDouble(), height.toDouble()),
          backgroundColor: onPressed != null ? color : ThemeConfig.grey,
          shape: shape,
          disabledForegroundColor: Colors.blue),
      child: child,
      onPressed: onPressed,
    );
  }

  static Widget maxSize(
      {width, height, color, shape, child, dynamic onPressed, padding}) {
    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: ThemeConfig.noColor,
          fixedSize: Size(width, height),
          backgroundColor: color,
          padding: padding,
          shape: shape),
      child: child,
      onPressed: onPressed,
    );
  }

  static Widget icon({required void Function() onPress,required IconData icon,Color? color = Colors.grey,height =25,width=25}) {
    return
      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5)),
        height: double.parse(height.toString()),
        width: double.parse(width.toString()),
        child: Buttons(
          padding: EdgeInsets.zero,
          onPressed:onPress,
          child: Icon(
            icon,
            color: color,
            size: 14,
          ),
        ),
      );
  }

  static save(VoidCallback onPress){
    return  Buttons(onPressed: onPress,child: Text("Save",style: StyleConfig.fsNormal,),color: ThemeConfig.accentColor,minWidth: DeviceInfo.width,minHeight: 50.0,);
  }
  static update(VoidCallback onPress){
    return  Buttons(onPressed: onPress,child: Text("Update",style: StyleConfig.fsNormal,),color: ThemeConfig.accentColor,minWidth: DeviceInfo.width,minHeight: 50.0,);
  }
  static send(VoidCallback onPress){
    return  Buttons(onPressed: onPress,child: Text("Send",style: StyleConfig.fsNormal,),color: ThemeConfig.accentColor,minWidth: DeviceInfo.width,minHeight: 50.0,);
  }


}
