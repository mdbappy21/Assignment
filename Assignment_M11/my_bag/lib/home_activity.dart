import 'package:flutter/material.dart';
import 'package:my_bag/AlertDialog.dart';
import 'package:my_bag/productItems.dart';
import 'package:my_bag/snackBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int totalAmount = 0;
  int amount = 0;

  void _decrementCounter(var index) {
    setState(() {
      if (productItems.items[index]["count"] > 1) {
        productItems.items[index]["count"]--;
        amount = productItems.items[index]["price"];
        totalAmount -= amount;
      }
    });
  }

  void _incrementCounter(var index) {
    setState(() {
      productItems.items[index]["count"]++;
      amount = productItems.items[index]["price"];
      totalAmount += amount;
      if (productItems.items[index]["count"] == 6) {
        AlartDialog.alertDialog(context, index);
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
                  Text(textAlign: TextAlign.start, 'My Bag', style: TextStyle(fontSize: 34, color: Color.fromRGBO(34, 34, 34, 1)),),
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
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                color: Colors.white,
                                image: DecorationImage(fit: BoxFit.fitHeight,
                                  image: NetworkImage(productItems.items[index]["img"]!,),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(textAlign: TextAlign.start, "${productItems.items[index]["title"]}",
                                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
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
                                        Text("Color : ${productItems.items[index]["color"]}",
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(width: 30,),
                                        Text("Size ${productItems.items[index]["Size"]}",
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Material(
                                          elevation: 4,
                                          borderRadius: BorderRadius.circular(20),
                                          child: InkWell(
                                            onTap: () {
                                              _decrementCounter(index);
                                            },
                                            child: const Icon(Icons.remove, color: Colors.grey,),
                                          ),
                                        ),
                                        const SizedBox(width: 15,),
                                        Text("${productItems.items[index]["count"] - 1}"),
                                        const SizedBox(width: 15,),
                                        Material(
                                          elevation: 4,
                                          borderRadius: BorderRadius.circular(20),
                                          child: InkWell(
                                            onTap: () {
                                              _incrementCounter(index);
                                            },
                                            child: const Icon(Icons.add, color: Colors.grey,),
                                          ),
                                        ),
                                        const SizedBox(width: 50,),
                                        Text("${productItems.items[index]["price"]}\$"),
                                      ],
                                    )
                                  ],
                                ),
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
                  child: Text(textAlign: TextAlign.start, "Total amount : ",
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(155, 155, 155, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("$totalAmount \$",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  snackBar.mySnackBar("Congratulations! Successfully purchase items.", context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(219, 48, 34, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: const Text("CHECK OUT"),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
