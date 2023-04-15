import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Weather()));
}

const apiKey = '';//ключ
class Weather extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WeatherState();
  }

}
class WeatherState extends State<Weather>{
  String city = 'Almaty';
  String temperature = '';
  String weatherIcon = '';
  //разберите данный метод
  Future<void> fetchWeatherData() async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=aa05b6293f333ce665bc726d7fcd0ed2&units=metric';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);

      setState(() {
        temperature = data['main']['temp'].toStringAsFixed(1);
        weatherIcon = data['weather'][0]['icon'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  final List<String> cities = ['Almaty', 'Astana', 'Karaganda', 'Shymkent', 'Pavlodar'];

  String? selectedCity;

  void onCityChanged(String? newValue) {
    setState(() {
      selectedCity = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: 1050,
            child: Image(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
              height: 1050,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: selectedCity,
                  onChanged: onCityChanged,
                  items: cities.map((String city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(
                          city),
                    );
                  }).toList(),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      selectedCity ?? 'Almaty',
                      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                    ),


                    weatherIcon.isEmpty
                        ? CircularProgressIndicator()
                        : Image.network(
                      'https://openweathermap.org/img/w/$weatherIcon.png',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Text(
                      '$temperature°C',
                      style: const TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                    ),
                  ],)


              ],
            ),
          )

        ],
      ),
    );
  }

}
