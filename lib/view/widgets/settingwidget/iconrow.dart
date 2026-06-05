import 'package:autiva/view/widgets/settingwidget/forwardbuttom.dart';
import 'package:flutter/material.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';

class RowContainer extends StatelessWidget {
  RowContainer({
    super.key,
    this.iconData,
    this.color,
    this.title,
    this.title2,
    this.ontap,
    this.Switch,
    required this.downbuttom,
    this.onChanged,
  });

  final IconData? iconData;
  final Color? color;
  final String? title;
  final String? title2;
  final void Function()? ontap;
  bool? Switch;
  bool? downbuttom;
  void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Container(
            height: AppConstans.Width / 8,
            width: AppConstans.Width / 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Icon(
              iconData,
              size: AppConstans.Width / 12,
            ),
          ),
          SizedBox(width: AppConstans.Width * .035),

          Expanded(
            flex: 2, // Assigning space ratio for title
            child: Text(
              title!,
              style: TextStyleClass.getTextStyle(
                "Regular",
                AppConstans.Width / 25,
              ),
            ),
          ),

          // Spacing between title and title2
          Expanded(
            flex: 1, // Assigning space ratio for title2
            child: Text(
              title2!,
              style: TextStyle(
                fontSize: AppConstans.Width / 25,
                color: Colors.grey,
              ),
              textAlign: TextAlign.right, // Align title2 to the right
            ),
          ),

          // Forward arrow or dropdown
          Forwardarrow(onPressed: ontap),
        ],
      ),
    );
  }
}
