import 'package:erp_app_boe_industry/utils/constants/color.dart';
import 'package:erp_app_boe_industry/utils/constants/theme.dart';
import 'package:erp_app_boe_industry/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LockScreenOne extends StatefulWidget {
  const LockScreenOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LockScreenOneState();
}

class _LockScreenOneState extends State<LockScreenOne> {
  double _getWidth() {
    if (MediaQuery.of(context).size.width <= 550) {
      return MediaQuery.of(context).size.width / 2 - 40;
    } else if (MediaQuery.of(context).size.width <= 750) {
      return (MediaQuery.of(context).size.width / 2) - 50;
    } else if (Responsive.isWeb(context)) {
      return ((MediaQuery.of(context).size.width - 240) / 4) - 36;
    } else {
      return (MediaQuery.of(context).size.width / 3) - 36;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lottie/connecting-lottie.json",
            width: MediaQuery.of(context).size.width / 1.5),
      ),
      bottomNavigationBar: const LinearProgressIndicator(
        color: ColorConst.primary,
      ),
    );
  }

  Widget _cardWidget({
    required Size size,
    required String label,
    required Widget widget,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 180,
        width: _getWidth(),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: isDark
                        ? ColorConst.darkFontColor
                        : ColorConst.lightFontColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 32,),
                widget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
