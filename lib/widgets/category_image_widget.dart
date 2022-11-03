import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          EdgeInsets.only(right: (index == categories.length + 1) ? 0 : 20.r),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                catergory.image,
                height: 230.sm,
                width: 170.sm,
              ),
              Align(
                child: Text(
                  catergory.middleText,
                  style: TextStyles.inter(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          18.verticalSpace,
          Text(
            catergory.title,
            style: TextStyles.inter(
              fontSize: 26.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
