import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/interface/widgets/home_second_half.dart';

import '../../../../../shared/constants/app_spacer.dart';
import 'home_first_half.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeFirstHalf(),
          AppSpacer.hLarger(),
          HomeSecondHalf(),
        ],
      ),
    );
  }
}
