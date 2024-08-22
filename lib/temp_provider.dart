import "package:provider/provider.dart";
import "package:flutter/material.dart";

class TempProvider extends ChangeNotifier
{
  double celsius=0.0;
  double fahrenheit=0.0;
  double kelvin=0.0;
  void setCelsius(double value)
  {
    celsius=value;
    convertTemp();
  }
  void convertTemp()
  {
    fahrenheit=(celsius*9/5)+32;
    kelvin=(celsius+273.15);
    notifyListeners();
  }
  void reset()
  {
     celsius=0.0;
     fahrenheit=0.0;
     kelvin=0.0;
     notifyListeners();
  }
}