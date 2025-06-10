import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nubank/core/themes/colors.dart';

class AccountMenuItem extends StatefulWidget {
  const AccountMenuItem({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final String icon;
  final VoidCallback? onPressed;

  @override
  State<AccountMenuItem> createState() => _AccountMenuItemState();
}

class _AccountMenuItemState extends State<AccountMenuItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Semantics(
        label: widget.title,
        selected: isSelected,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.neutralLight,
              maxRadius: 36,
              child: SvgPicture.asset(
                widget.icon,
                colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.primary : AppColors.black,
                  BlendMode.srcIn,
                ),
                height: 32,
                width: 32,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: TextStyle(
                color: isSelected ? AppColors.primary : AppColors.black,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
