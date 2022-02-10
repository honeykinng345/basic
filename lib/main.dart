import 'package:flutter/material.dart';
import './app_screens/home.dart';
import 'app_screens/statefull.dart';
import 'app_screens/NoteList.dart';
import 'app_screens/SimpleCalculator.dart';
import 'app_screens/NoteDetail.dart';

void main() {


  //lect 2
/*  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic List View"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB clicked");
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),

    ),
  ));*/

//lec 3.2
/*

   runApp(MaterialApp(
     title: "Expore",
     home: FavoriteCity() ,
   ));
   */

  //
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "Expore",
    home: NoteList(),
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.deepOrangeAccent,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.red, // Your accent color
      ),
    ),
  ));
}
//static list
/*Widget getListView() {

  var listView = ListView(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child:  Expanded(child:
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ) ),
      ),
      Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child:  Expanded(child:
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ) ),
      ),
      Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child:  Expanded(child:
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ) ),
      ),
      Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child:  Expanded(child:
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ) ),
      ),
      Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child:  Expanded(child:
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () =>debugPrint("Landscape tapped")

        ) ),
      ),


*/ /*
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),

      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
*/ /*

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)

    ],
  );

  return listView;
}*/

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

void showSnackBar(BuildContext context, String item) {
/*  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint('Performing dummy UNDO operation');
        }
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);*/
  Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () => Navigator.of(context).pop() // dismiss dialog
      );
  Widget CanclButton = TextButton(
      child: Text("Canel"),
      onPressed: () => Navigator.of(context).pop() // dismiss dialog
      );
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Incremented"),
      duration: Duration(milliseconds: 300),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () => debugPrint('Performing dummy UNDO operation')),
    ),
  );
}
Widget getListView() {
  var dkd = ['images/test.jpg', 'images/u6.jpg'];
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context, listItems[index]);
      },
    );
  });

  return listView;
}

