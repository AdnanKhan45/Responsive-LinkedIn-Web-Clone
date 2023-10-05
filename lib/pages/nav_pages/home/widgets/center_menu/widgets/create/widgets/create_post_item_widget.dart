

import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class CreatePostItemWidget extends StatefulWidget {
  final String? title;
  final IconData? iconData;
  final Color? color;
  const CreatePostItemWidget({Key? key, this.title, this.iconData, this.color}) : super(key: key);

  @override
  State<CreatePostItemWidget> createState() => _CreatePostItemWidgetState();
}

class _CreatePostItemWidgetState extends State<CreatePostItemWidget> {

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
            color: _isHover ==true? linkedInLightGreyBackgroundF3F2EE : Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          children: [
            Icon(widget.iconData, size: 22, color: widget.color,),
            const SizedBox(width: 15,),
            Text("${widget.title}", style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: linkedInMediumGrey86888A),)
          ],
        ),
      ),
    );
  }
}
