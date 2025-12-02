import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';

class CustomAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final Color? color;
  final bool bold;
  final BoxShape? shape;

  const CustomAvatar({
    super.key,
    required this.imageUrl,
    required this.name,
    this.color,
    this.shape,
    this.bold = false,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty || imageUrl.trim().isEmpty) {
      return _buildFallbackAvatar(context);
    }

    final avatar = CachedNetworkImage(
      imageUrl: imageUrl,
      width: size,
      height: size,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => AdvancedAvatar(
        name: name,
        size: size,
        autoTextSize: true,
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
        decoration: BoxDecoration(
          shape: shape ?? BoxShape.circle,
          color: color ?? context.colorPrimary,
        ),
      ),
      placeholder: (context, url) => AdvancedAvatar(
        name: name,
        size: size,
        autoTextSize: true,
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? context.colorPrimary,
        ),
      ),
    );
    if (shape == null) return ClipOval(child: avatar);
    return avatar;
  }

  // ✅ Fallback untuk empty imageUrl
  Widget _buildFallbackAvatar(BuildContext context) {
    final avatar = AdvancedAvatar(
      name: name,
      size: size,
      autoTextSize: true,
      style: TextStyle(
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.circle,
        color: color ?? context.colorPrimary,
      ),
    );
    if (shape == null) return ClipOval(child: avatar);
    return avatar;
  }
}
