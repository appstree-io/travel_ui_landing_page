import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class SearchBarSelectionWidget extends StatelessWidget {
  const SearchBarSelectionWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.inter(
            context: context,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2D3134),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              description,
              style: TextStyles.inter(
                context: context,
                fontSize: 12,
                color: const Color(0xFF9498A4),
              ),
            ),
            const SizedBox(width: 25),
            image,
          ],
        ),
      ],
    );
  }
}
