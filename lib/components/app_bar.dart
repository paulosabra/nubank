import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nubank/core/assets/icons.dart';
import 'package:nubank/core/themes/colors.dart';
import 'package:nubank/core/utils/extensions/context.dart';

class NuAppBar extends StatefulWidget implements PreferredSizeWidget {
  const NuAppBar({super.key, required this.userName});

  final String userName;

  @override
  State<NuAppBar> createState() => _NuAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2.5);
}

class _NuAppBarState extends State<NuAppBar> {
  bool _areValuesVisible = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primary,
      elevation: 0,
      toolbarHeight: kToolbarHeight * 3,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.white.withAlpha(30),
                radius: 24,
                child: SvgPicture.asset(AppIcon.userIcon),
              ),
              const Spacer(),
              IconButton(
                icon: SvgPicture.asset(
                  _areValuesVisible ? AppIcon.eyeOnIcon : AppIcon.eyeOffIcon,
                ),
                onPressed: () {
                  setState(() {
                    _areValuesVisible = !_areValuesVisible;
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(AppIcon.helpIcon),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Help Button Pressed')),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            context.l10n.greeting(widget.userName),
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
