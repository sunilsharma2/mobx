import 'package:flutter/material.dart';
class RichTextWidget extends StatelessWidget {
  String text;
  RichTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RichText(
        text: TextSpan(
            children: [
              WidgetSpan(
                  child: Icon(Icons.check,color: Colors.white,
                    size: MediaQuery.of(context).size.height*0.03,
                  )
              ),
              TextSpan(
                  text: " ${text}"
              )
            ]
        )
    );
  }
}