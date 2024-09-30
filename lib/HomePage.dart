import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hallo!"),
          backgroundColor: const Color.fromARGB(255, 162, 80, 150),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: Center(
                child: Image.network(
                  'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/banner/bg_banner.webp',
                ),
              ),
            ),
            Container(child: Text("halooo")),
            Row(
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                      height: 250,
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                      height: 250,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Mie Kuah",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
