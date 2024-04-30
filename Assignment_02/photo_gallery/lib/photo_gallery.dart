import 'package:flutter/material.dart';
import 'AppBar.dart';

class photo_gallery extends StatelessWidget {
  final String title;
  final String url;
  var Suggestions = [
    {
      "img":
          "https://st4.depositphotos.com/25860040/29994/i/450/depositphotos_299947736-stock-photo-sunset-nature-bird-sunset-nature.jpg",
      "title": "Dawn"
    },
    {
      "img":
          "https://img.freepik.com/premium-photo/tree-lake-night-with-wonderful-sky_969965-8343.jpg",
      "title": "Leaves"
    },
  ];

  photo_gallery({required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(title: title),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 6, left: 15, right: 15),
                    height: (.4 * screenSize.height),
                    width: (.95 * screenSize.width),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(url))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Mood With Nature",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: (.95 * screenSize.width), // Example width
                      child: const Text(
                        "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        softWrap: true, // Ensure soft wrapping is enabled
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: (.175 * screenSize.width),
                                  vertical: (.02 * screenSize.height)),
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(44, 171, 0, 1),
                              textStyle: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            child: const Text("See More"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(44, 171, 0, 1)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: (.44 * screenSize.width),
                            width: (.44 * screenSize.width),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://st4.depositphotos.com/25860040/29994/i/450/depositphotos_299947736-stock-photo-sunset-nature-bird-sunset-nature.jpg"),
                              ),
                            ),
                          ),

                          //Text container
                          Positioned(
                            bottom: 8,
                            left: 20,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Dawn",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: (.44 * screenSize.width),
                            width: (.44 * screenSize.width),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://img.freepik.com/premium-photo/tree-lake-night-with-wonderful-sky_969965-8343.jpg"),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 20,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Leaves",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                          //Text container
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                        height: (.4 * screenSize.width),
                        width: (.4 * screenSize.width),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: NetworkImage(url))),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: .54 * screenSize.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Mood With Nature",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: (.5 * screenSize.width), // Example width
                                child: const Text(
                                  "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  softWrap:
                                      true, // Ensure soft wrapping is enabled
                                ),
                              ),
                            ),
                            Container(
                              width: screenSize.width,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2CAB00),
                                    foregroundColor: Colors.white,
                                    //text colour
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    //Text style hbe..
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700, //bold hbe
                                    ),
                                    //pading dite pari
                                    padding: EdgeInsets.all(16),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "See More",
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "Suggestions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(44, 171, 0, 1)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: .45 * screenSize.width,
                        width: .45 * screenSize.width,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: Suggestions.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: (.45 * screenSize.height),
                                  width: (.45 * screenSize.width),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        Suggestions[index]["img"]!,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
