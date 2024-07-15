
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_text_form_field.dart';
import '../cubits/product_cubit.dart';

class SearchAndCartComponent extends StatelessWidget {
  const SearchAndCartComponent({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 9,
          child: SizedBox(
            height: 55.h,
            child: CustomTxtFormField(
              onChange: (val){
                cubit.searchProduct(val);
              },
              hintText: AppStrings.hintSearch,
              prefixIcon: Icon(
                IconlyLight.search,
                size: 28.sp,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(50),
              colorEnabledBorder: AppColors.primary,
              colorFocusedBorder: AppColors.primary,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.buy,
              size: 35.sp,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
