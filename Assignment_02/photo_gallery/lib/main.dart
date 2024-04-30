import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'newScreenNavigation.dart';
import 'AppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var PhotoItem = [
    {
      "img":
          "https://s3-alpha-sig.figma.com/img/8ae8/8351/d9d8ec2de6a2ad384cd6cc3e473842ef?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DxGHz28D28-OtALbzofWYltYbn0ZPy5VLsvu2P3Vh9whGPiyvij3Z26FlkyZWNUkFdPyWRfUSbsGMnE8tvzX0MbOsaKNprf8WXwsXD6YJrjeW~ZIYnFifuLpZ-MnntvJiwT0FTg~jtxwkcPc39sVn12HWw510JkEqnM0oTa5Bncz~B0GKOlDANu1VpU7a8s4IIQf~G~GVTtqo~iBI5Mc5U16WFRiBbYdoAayE0xmoGHkuzDszzXdNuGvNQDbHHUwMZnZspIALHRbOnPZbht-15Is~TAphgHOUVxdbY7l0DUfzk84PUqg01qGcteabNPKU6jWEvJk4pe~wMgrIcqODA__",
      "title": "Mood"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
      "title": "Aesthetic"
    },
    {
      "img":
          "https://images.theconversation.com/files/584709/original/file-20240327-24-c6v159.jpg?ixlib=rb-4.1.0&rect=296%2C74%2C4196%2C2916&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip",
      "title": "Animals"
    },
    {
      "img":
          "https://st4.depositphotos.com/25860040/29994/i/450/depositphotos_299947736-stock-photo-sunset-nature-bird-sunset-nature.jpg",
      "title": "City"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg",
      "title": "Travel"
    },
    {
      "img":
          "https://img.freepik.com/premium-photo/tree-lake-night-with-wonderful-sky_969965-8343.jpg",
      "title": "Sky"
    },
    {
      "img":
          "https://images.pexels.com/photos/128234/pexels-photo-128234.jpeg?cs=srgb&dl=pexels-etha-34545-128234.jpg&fm=jpg",
      "title": "Road"
    },
    {
      "img":
          "https://img.freepik.com/premium-photo/panorama-small-tree-growing-with-sunrise-green-world-earth-day-concept-generative-ai_779468-6243.jpg",
      "title": "Flowers"
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/026/365/937/small/beautiful-blurred-green-nature-background-ai-generated-photo.jpg",
      "title": "Water drop"
    },
    {
      "img":
          "https://www.shutterstock.com/image-photo/majestic-bald-eagle-soaring-majestically-600nw-2364347943.jpg",
      "title": "Eagle"
    },
    {
      "img":
          "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
      "title": "Mountain"
    },
    {
      "img":
          "https://wallpaperaccess.com/full/7047416.jpg",
      "title": "Moon"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appBar(title: "Photo Gallery"),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //crossAxisSpacing: 6
                  ),
                  itemCount: PhotoItem.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        newScreenNevigation.navigateToNextScreen(
                            context, photo_gallery(title: PhotoItem[index]["title"] as String,url: PhotoItem[index]["img"]as String,
                        ));
                      },
                      child:Stack(
                        children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: (.45*screenSize.height),
                              width: (.45*screenSize.height),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      PhotoItem[index]["img"]!,
                                  ),
                                ),
                              ),
                            ),

                          //Text container
                          Container(
                              padding: const EdgeInsets.all(30),
                              alignment: Alignment.bottomLeft,
                              child: Text(PhotoItem[index]['title']as String, style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                            ),
                        ],
                      ),

                    );
                  });
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  //crossAxisSpacing: 6
                ),
                itemCount: PhotoItem.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      newScreenNevigation.navigateToNextScreen(
                          context, photo_gallery(title: PhotoItem[index]["title"] as String,url: PhotoItem[index]["img"]as String,));
                    },
                    child:Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: (.45*screenSize.width),
                          width: (.45*screenSize.width),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                PhotoItem[index]["img"]!,
                              ),
                            ),
                          ),
                        ),

                        //Text container
                        Container(
                          padding: const EdgeInsets.all(30),
                          alignment: Alignment.bottomLeft,
                          child: Text(PhotoItem[index]['title']as String, style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
