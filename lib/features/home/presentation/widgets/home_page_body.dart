import 'package:flutter/material.dart';

import '../../../../core/utilize/colors.dart';
import '../../../../core/utilize/constants.dart';
import 'current_weather/current_weather_card.dart';
import 'forecasts/forecasts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.size.width,
      height: AppConstants.size.height,
      padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      color: AppColors.primaryColor.withOpacity(.1),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CurrentWeatherCard(),
          Forecasts(),
        ],
      ),
    );
  }
}
