import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utilize/constants.dart';
import '../manager/details_notifier.dart';
import 'forecast_card.dart';

class ForecastsList extends StatelessWidget {
  const ForecastsList({super.key});

  @override
  Widget build(BuildContext context) {
    final detailsNotifier = context.watch<DetailsNotifier>();
    final forecast = detailsNotifier.weatherModel.dailyWeatherForecast;
    return Positioned(
      top: 320,
      left: 0,
      child: SizedBox(
        height: 400,
        width: AppConstants.size.width * .9,
        child: ListView.builder(
          itemCount: min(3, forecast.length),
          itemBuilder: (context, index) => ForecastCard(
            forecastModel: forecast[index],
          ),
        ),
      ),
    );
  }
}
