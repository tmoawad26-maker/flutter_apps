import 'package:flutter/material.dart';
import 'package:flutter_apps/constants.dart';
class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text('الشروط والاحكام',
          style: TextStyle(
            color: kTextColor,
          ),
        ),
       const  SizedBox(width: 3,),
        const Text('اوافق على',
        style: TextStyle(
          color: kHintTextColor
        ),
        ),
       const  SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Checkbox(
              side: BorderSide.none,
            fillColor: WidgetStateProperty.resolveWith<Color>(
                    (states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.blue; // Color when checked
              }
              return Colors.white; // Color when unchecked (white background)
            }),
              value: isChecked,
              onChanged: (value)
              {
               setState(() {
                 isChecked = value;
                const  Icon(Icons.check, color: kTextColor);
               });
              },
          ),
        ),
      ],
    );
  }
}
