import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nubank/core/assets/icons.dart';
import 'package:nubank/core/themes/colors.dart';
import 'package:nubank/core/utils/extensions/context.dart';

class NuButton extends StatelessWidget {
  const NuButton.primary({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.isExpanded = false,
  }) : style = const ButtonStyle(
         backgroundColor: WidgetStatePropertyAll(AppColors.primary),
         foregroundColor: WidgetStatePropertyAll(AppColors.white),
         elevation: WidgetStatePropertyAll(0),
         padding: WidgetStatePropertyAll(
           EdgeInsets.symmetric(vertical: 12, horizontal: 24),
         ),
         shape: WidgetStatePropertyAll(
           RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(24)),
           ),
         ),
       );

  const NuButton.secondary({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.isExpanded = true,
  }) : style = const ButtonStyle(
         backgroundColor: WidgetStatePropertyAll(AppColors.neutralLight),
         foregroundColor: WidgetStatePropertyAll(AppColors.black),
         elevation: WidgetStatePropertyAll(0),
         padding: WidgetStatePropertyAll(
           EdgeInsets.symmetric(vertical: 20, horizontal: 16),
         ),
         shape: WidgetStatePropertyAll(
           RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(12)),
           ),
         ),
       );

  final String text;
  final String? icon;
  final ButtonStyle style;
  final VoidCallback? onPressed;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Row(
        mainAxisSize: isExpanded ? MainAxisSize.max : MainAxisSize.min,
        children: [
          if (icon == null)
            const SizedBox()
          else
            Row(
              children: [
                SvgPicture.asset(icon ?? '', width: 24, height: 24),
                const SizedBox(width: 16),
              ],
            ),
          Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class RateButton extends StatelessWidget {
  const RateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Rate Button Pressed')),
            );
          },
          child: Row(
            children: [
              SvgPicture.asset(AppIcon.heartIcon, width: 24, height: 24),
              const SizedBox(width: 16),
              Text(
                context.l10n.rateButton,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
