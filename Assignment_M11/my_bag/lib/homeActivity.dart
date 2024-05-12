import 'package:flutter/material.dart';
import 'package:my_bag/AlertDialog.dart';
import 'package:my_bag/productItems.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int totalAmount = 10;

  void _incrementCounter(var index) {
    setState(() {
      productItems.items[index]["count"]++;
      if (productItems.items[index]["count"] == 5) {
        AlartDialog.alertDialog(context, index);
      }
    });
  }

  void _decrementCounter(var index) {
    setState(() {
      if (productItems.items[index]["count"] > 0) {
        productItems.items[index]["count"]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    'My Bag',
                    style: TextStyle(
                        fontSize: 34, color: Color.fromRGBO(34, 34, 34, 1)),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: productItems.items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage(
                                    productItems.items[index]["img"]!,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.start,
                                        "${productItems.items[index]["title"]}",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert),
                                        alignment: Alignment.centerRight,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Color : ${productItems.items[index]["color"]}",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(width: 30,),
                                      Text(
                                        "Size ${productItems.items[index]["Size"]}",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _decrementCounter(index);
                                          },
                                          icon: const Icon(Icons.remove)),
                                      Text(
                                          "${productItems.items[index]["count"]}"),
                                      IconButton(
                                          onPressed: () {
                                            _incrementCounter(index);
                                          },
                                          icon: const Icon(Icons.add)),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                          "${productItems.items[index]["price"]}\$"),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.start,
                    "Totol amount : ",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(155, 155, 155, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("${productItems.items[1]["price"]}"),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                //  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(219, 48, 34, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 5),
                ),
                child: const Text("CHECK OUT")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
