import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class NabBarItemWidget extends StatefulWidget {
  final String? title;
  final IconData? icon;
  final Color? color;
  final VoidCallback? onTap;
  final Color? bottomBorderColor;
  final double? borderWidth;
  final int? index;
  const NabBarItemWidget({Key? key, this.title, this.icon, this.color, this.onTap, this.index, this.bottomBorderColor, this.borderWidth=50}) : super(key: key);

  @override
  State<NabBarItemWidget> createState() => _NabBarItemWidgetState();
}

class _NabBarItemWidgetState extends State<NabBarItemWidget> {


  bool _isHover = false;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: widget.title == null ? 15 : 10),
              child: Column(
                children: [
                  Icon(
                    widget.icon,
                    color: _isHover == true? linkedInBlack000000 : widget.color,
                    size: 20,
                  ),
                  widget.title == null ? Container() :const SizedBox(
                    height: 4,
                  ),
                  widget.title == null ? Container() :Text(
                    "${widget.title}",
                    style: TextStyle(color:_isHover == true? linkedInBlack000000 :  widget.color, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: widget.borderWidth,
            height: 2,
            color: widget.bottomBorderColor,
          )
        ],
      ),
    );
  }
}
