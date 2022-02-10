import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}


class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = "";
  var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var _currentItemSelected = 'Dollars';

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City widget is created");

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                _EditTextValueSet(userInput);
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String? newValue) {

                _onDropDownItemSelected(newValue!);

              },
              value: _currentItemSelected,


            ),
            Padding(
                padding: EdgeInsets.all(100.0),

                child:Center(

                  child:  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Your bext city is $nameCity",
                      style: TextStyle(fontSize: 20.0),
                    ) ,
                  )
                 ) ,
                )

          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
  void _EditTextValueSet(String val) {
    setState(() {
      this.nameCity = val;
    });
  }
}

