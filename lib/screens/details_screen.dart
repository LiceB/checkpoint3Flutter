import 'package:checkpoint3/models/rede_social.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final RedeSocial redeSocial;

  DetailsScreen({required this.redeSocial});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Post'),
      ),
      body: Column(
        children: [
          Icon(redeSocial.logo, size: 100,),
          Text(redeSocial.descricao),
          Container(
            height: 350,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/facebook_1.jpg'),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

List<charts.Series<OrdinalSales, String>> _createSampleData() {
  final data = [
    OrdinalSales('Jan', 5),
    OrdinalSales('Fev', 25),
    OrdinalSales('Mar', 100),
    OrdinalSales('Abr', 75),
  ];

  return [
    charts.Series<OrdinalSales, String>(
      id: 'Sales',
      domainFn: (OrdinalSales sales, _) => sales.month,
      measureFn: (OrdinalSales sales, _) => sales.sales,
      data: data,
    ),
  ];
}

class OrdinalSales {
  final String month;
  final int sales;

  OrdinalSales(this.month, this.sales);
}
