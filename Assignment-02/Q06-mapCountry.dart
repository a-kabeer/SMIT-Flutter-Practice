void main() {
//  Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
  List world = [
    {
      "country": {
        "pakistan": {
          "capitalCity": "karachi",
          "currency": "rupees",
          "language": "urdu"
        }
      }
    },
    {
      "country": {
        "iran": {
          "capitalCity": "tehran",
          "currency": "rial",
          "language": "farsi"
        }
      }
    },
    {
      "country": {
        "afghanistan": {
          "capitalCity": "kabul",
          "currency": "afghani",
          "language": "pashto/farsi"
        }
      }
    },
    {
      "country": {
        "china": {
          "capitalCity": "beijing",
          "currency": "yuan",
          "language": "chinese"
        }
      }
    },
    {
      "country": {
        "india": {
          "capitalCity": "New Delhi",
          "currency": "rupees",
          "language": "hindi/english"
        }
      }
    }
  ];
  for (var i = 0; i < world.length; i++) {
    print(world[i]["country"]);
  }
}
