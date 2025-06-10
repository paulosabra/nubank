import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nubank/core/assets/icons.dart';
import 'package:nubank/core/themes/colors.dart';

class NuCard extends StatelessWidget {
  const NuCard({
    super.key,
    required this.data,
    this.children = const <Widget>[],
  });

  final String data;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: AppColors.neutralLight, height: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('$data Pressed')));
                    },
                    icon: SvgPicture.asset(
                      AppIcon.chevronRightIcon,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ],
              ),
              ...children,
            ],
          ),
        ),
      ],
    );
  }
}
