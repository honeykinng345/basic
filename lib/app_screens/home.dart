import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            color: Colors.deepPurple,
            //  width: 500.0,
            //  height: 200.0,
            // margin: EdgeInsets.only(left: 35.0, top: 00.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 40.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                      Expanded(
                          child: Text(
                        "From Mumbai to Bangalore via New Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: FlightImageAsset()),
                    Expanded(child: FlightImageAsset()),
                    Expanded(child: FlightImageAsset())
                  ],
                ),
                FlightBookButton()
              ],
            ))
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/test.jpg');
    Image image = Image(
      image: assetImage,
      width: 100.0,
      height: 100.0,
    );
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30.0),
        width: 200.0,
        height: 50.0,
        child: ElevatedButton(
          onPressed: () => bookFlight(context),
          child: Text(
            "Book Your Flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              onSurface: Colors.pink,
              primary: Colors.lightBlue,
              elevation: 10.0,
              padding: EdgeInsets.all(10.0)),
        ));
  }
}

void bookFlight(BuildContext context) {
  bool checl = true;
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: ()


    => Navigator.of(context).pop() // dismiss dialog
  );
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a pleasant flight"),
    actions: [
      okButton,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog);
}

