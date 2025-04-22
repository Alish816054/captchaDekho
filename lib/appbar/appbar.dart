import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final String title;
  final Color backgroundColor;
  final VoidCallback? onLeadingTap;

  const CustomAppBar({
    Key? key,
    required this.leadingIcon,
    required this.title,
    this.backgroundColor = Colors.blue,
    this.onLeadingTap,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      toolbarHeight: 100,
      leading: IconButton(
        icon: Icon(leadingIcon, size: 30),
        onPressed: onLeadingTap ?? () => Navigator.pop(context),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
