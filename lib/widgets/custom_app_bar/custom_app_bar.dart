import 'package:flutter/material.dart';
import 'package:marsell/screens/ProfileScreen.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';
import 'package:marsell/widgets/constants/drawerconstants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    Key? key,
    this.title = '',
    this.leading,
    this.titleWidget,
    this.showActionIcon = false,
    this.onMenuActionTap,
  });

  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;
  final VoidCallback? onMenuActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25 / 2.5,
        ),
        child: Stack(
          children: [
            // APPBAR TEXT or ICON
            Positioned.fill(
              child: titleWidget == null
                ? Center(
                    child: Text(title),
                  )
                : Center(
                    child: titleWidget,
                  )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ?? Transform.translate(
                  offset: const Offset(-14, 0),
                  child: const BackButton(color: inActiveColor,),
                ),
                if(showActionIcon)
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: InkWell(
                      onTap: onMenuActionTap,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.menu),
                      )
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
