
import 'package:erp_app_boe_industry/utils/constants/color.dart';
import 'package:erp_app_boe_industry/utils/constants/custom_text.dart';
import 'package:erp_app_boe_industry/utils/constants/image.dart';
import 'package:erp_app_boe_industry/utils/constants/theme.dart';
import 'package:flutter/material.dart';


class ConstantAuth {
  static Widget labelView(String label) {
    return CustomText(
      title: label,
      fontSize: 15,
      fontWeight: FontWeight.w800,
      textColor: isDark ? ColorConst.white : ColorConst.lightFontColor,
    );
  }

  static Widget headerView(
      String title, String subTitle, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(
          title: title,
          fontSize: 28,
          fontWeight: FontWeight.w700,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
        const SizedBox( height: 6,),
        CustomText(
          title: subTitle,
          fontSize: 16,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
      ],
    );
  }

  static Widget login(
    BuildContext context,
    bool isScreen,
    String title,
    String subTitle,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: title,
          textColor:
              isDark ? ColorConst.darkFooterText : ColorConst.lightFontColor,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        GestureDetector(
          onTap: () {
              //context.router.push(LoginOne());
          },
          child: CustomText(
            title: subTitle,
            fontSize: 15,
            textColor: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  static Widget homeBackground(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        Images.loginBg,
        fit: BoxFit.cover,
      ),
    );
  }
}
