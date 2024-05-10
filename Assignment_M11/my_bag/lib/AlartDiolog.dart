import 'package:flutter/material.dart';
import 'package:my_bag/productItems.dart';
class AlartDialog {
  static alartDialog(context,index) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text(textAlign: TextAlign.center, "Congratulations!"),
            content: Text(
                textAlign: TextAlign.center,
                "You have added\n5\n${productItems.items[index]["title"]} on your bag!"),
            actions:[
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(219, 48, 34, 1),
                    foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 5),
                  ),
                  child: Text("OKAY"))
            ],
          ));
        });
  }
}
