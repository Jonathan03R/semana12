import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Cambiado la coma final por punto y coma
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sesion 12'),
        ),
        body: Center(
          child: Container(
            width: 400.0,
            height: 300.0,
            child: Sparkline(
              data: data,
              lineColor: Colors.deepPurple,
              fillColor: Colors.deepPurple.withOpacity(0.3),
              lineWidth: 4.0,
              lineGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.deepPurple, Colors.white],
              ),
              pointsMode: PointsMode.all,
              pointSize: 8.0,
              pointColor: Colors.amber,
              useCubicSmoothing: true ,
              cubicSmoothingFactor: 0.2 ,
              kLine: ['max', 'min', 'first', 'last'],
              gridLinelabelPrefix: '\$',
              gridLineLabelPrecision: 3,
              gridLinesEnable: true,

            ),
          ),
        ),
      ),
    );
  }
}