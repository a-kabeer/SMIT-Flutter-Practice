void main() {
//  Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
  List world = [
    {
      "country": {
        "capitalCity": "Islamabad",
        "currency": "Rupees",
        "language": "Urdu"
      }
    },
    {
      "country": {
        "capitalCity": "Tehran",
        "currency": "Rial",
        "language": "Farsi"
      }
    },
    {
      "country": {
        "capitalCity": "New Delhi",
        "currency": "Rupee",
        "language": "Hindi/English"
      }
    }
  ];
  world.forEach((countryMap) {
    countryMap.forEach((key, value) {
      print("${value["capitalCity"]}, ${value["currency"]}");
    });
  });
}
