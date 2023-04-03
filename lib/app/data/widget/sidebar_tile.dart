import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

class SidebarTile extends StatelessWidget {
  const SidebarTile({
    super.key,
    required this.lable,
    this.onTap,
  });
  final String lable;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        color: AppColor.backgroundColor,
        elevation: 4,
        child: ListTile(
          title: Text(lable),
          onTap: onTap,
        ),
      ),
    );
  }
}
