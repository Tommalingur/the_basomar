import 'package:flutter/material.dart';

class InspectButton extends StatelessWidget {
  Text itemName;
  Text title;
  Text content;

  InspectButton({this.itemName, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        child: itemName,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          color: Colors.black,
        ),
      ),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.black,
          title: title,
          titleTextStyle: TextStyle(
              color: Colors.grey, fontSize: 25.0, fontFamily: 'Island'),
          content: content,
          contentTextStyle: TextStyle(
              color: Colors.grey, fontSize: 25.0, fontFamily: 'Island'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
//class InspectButton extends StatelessWidget {
//Text buttonText;
//Text titleText;
//Text itemText;
// Text buttonTitle;

//InspectButton(
//   {this.buttonText, this.itemText, this.titleText, this.buttonTitle});

//@override
// Widget build(BuildContext context) {
// void show(BuildContext ctx) {
// showDialog(
//  context: ctx,
// builder: (_) {
//  return TextButton(
//   child: Container(
//    padding: EdgeInsets.all(5.0),
//  margin: EdgeInsets.all(10),
//  decoration: BoxDecoration(
//  border: Border.all(
//  color: Colors.black,
//   width: 2.0,
//    style: BorderStyle.solid,
//   ),
//   color: Colors.grey,
// ),
// child: SimpleDialog(
//   title: titleText,
//  children: [
//    itemText,
//   SimpleDialogOption(
//     child: buttonTitle,
//     onPressed: () {
// Do something
//       buttonText;
//  Navigator.of(ctx).pop();
//     },
//     ),
//    ],
//  ),
//  ),
//  );
//    },
//   );
//   }
//  }
//}
