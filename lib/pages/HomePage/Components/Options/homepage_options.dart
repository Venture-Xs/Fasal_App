import 'package:fasal_app/pages/HomePage/Components/Options/option_class.dart';
import 'package:fasal_app/pages/HomePage/Components/Options/optioncard.dart';
import 'package:fasal_app/pages/HomePageOptions/CreditScore/credit_score.dart';
import 'package:fasal_app/pages/HomePageOptions/CropPrediction/crop_prediction.dart';
import 'package:fasal_app/pages/HomePageOptions/MarketPrice/market_price.dart';
import 'package:fasal_app/pages/HomePageOptions/WeatherForecast/weather_forecast.dart';
import 'package:flutter/material.dart';

class HomepageOptions extends StatefulWidget {
  const HomepageOptions({super.key});

  @override
  State<HomepageOptions> createState() => _HomepageOptionsState();
}

class _HomepageOptionsState extends State<HomepageOptions> {
  List<OptionObject> options = [
    OptionObject(optionname: "Crop Prediction", page: CropPrediction()),
    OptionObject(optionname: "Weather Forecast", page: WeatherForecast()),
    OptionObject(optionname: "Market Price", page: MarketPrice()),
    OptionObject(optionname: "Credit Score", page: CreditScore()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 48,
      child: GridView.builder(
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15,
            childAspectRatio: 1,
            crossAxisCount: 2,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return OptionCard(
            option: options[index].optionname,
            page: options[index].page,
            imageLocation: 'assets/images/crop_prediction.jpg',
          );
        },
      ),
    );
  }
}
