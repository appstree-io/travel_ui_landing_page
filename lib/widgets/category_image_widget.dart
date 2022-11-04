import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/models/models.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class CategoryImageWidget extends StatelessWidget {
  const CategoryImageWidget({
    Key? key,
    required this.catergory,
    required this.index,
  }) : super(key: key);

  final Catergory catergory;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: (index == categories.length + 1) ? 0 : 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                catergory.image,
                height: 230,
                width: 170,
              ),
              Align(
                child: Text(
                  catergory.middleText,
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            catergory.title,
            style: TextStyles.inter(
              context: context,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
