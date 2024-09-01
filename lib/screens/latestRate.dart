import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_app/Rate.dart';

class LatestRate extends StatefulWidget {
  const LatestRate({super.key});

  @override
  State<LatestRate> createState() => _LatestRateState();
}

class _LatestRateState extends State<LatestRate> {

  @override
  initState() {
    super.initState();
    print("Init State");
    getRate();
  }
  Future<Rate> getRate() async {
    var params = {
      "base": "THB"
    };
    var uri = Uri.https("currency-converter-pro1.p.rapidapi.com", "/latest-rates", params);

    var result = await http.get(uri, headers: {
      "X-RapidAPI-Host": "currency-converter-pro1.p.rapidapi.com",
      "x-rapidapi-key": "2d0d4ed9a1msh620f079db77af3ep15b3bcjsn4310ad7c47eb"
    });

    Rate rate = rateFromJson(result.body);
    print(rate.toString());
    return rate;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRate(), 
      builder: (BuildContext context, AsyncSnapshot<Rate> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          return Center(
            child: Text("Rate: ${snapshot.data!.toString()}"),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      });
  }
}
