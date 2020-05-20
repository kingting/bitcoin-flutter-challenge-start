//TODO: Add your imports here.
import 'package:http/http.dart' as http;
import 'dart:convert';


const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '59B060EE-5D46-46EA-B989-83F7040E60BB';

class CoinData {
  //TODO: Create your getCoinData() method here


  Future getCoinData(String currency) async {
    String url = '$coinAPIURL/BTC/$currency?apiKey=$apiKey';
    print('url = $url');
    http.Response response = await http.get(url);
    if (response.statusCode == 200)
    {
      String data = response.body;
      return jsonDecode(data);
    }
    else {
      print(response.statusCode);
    }
  }
}



