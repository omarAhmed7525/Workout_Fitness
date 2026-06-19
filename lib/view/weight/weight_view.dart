import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/border_button.dart';

class WeightView extends StatefulWidget {
  const WeightView({super.key});

  @override
  State<WeightView> createState() => _WeightViewState();
}

class _WeightViewState extends State<WeightView> {
  List myWeightArr = [
    {"name": "Sunday, AUG 19", "image": "assets/img/w_1.png"},
    {"name": "Sunday, AUG 26", "image": "assets/img/w_2.png"},
    {
      "name": "Sunday, AUG 26",
      "image": "assets/img/w_3.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.background,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/black_white.png",
              width: 25,
              height: 25,
            )),
        title: Text(
          "Check your process",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: BorderButton(
                        title: "Check Process",
                        type: BorderButtonType.inactive,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderButton(
                        title: "My Weight",
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Add more photo to control your process",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                width: media.width,
                height: media.width * 0.9,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.65,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: myWeightArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var dObj = myWeightArr[index] as Map? ?? {};
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: TColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      child: 
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dObj["image"].toString(),
                                width: double.maxFinite,
                                height: double.maxFinite,
                                fit: BoxFit.cover),
                          ),
                         
                       
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/black_fo.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Sunday, AUG 26",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/next_go.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),

            Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: 160,
        decoration: BoxDecoration(
            border: Border.all(color:  TColor.gray.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
         "74 kg",
          textAlign: TextAlign.center,
          style: TextStyle(color:  TColor.primary , fontSize: 24, fontWeight: FontWeight.w700 ),
        ),
      ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "                           Current Weight Update\nYour current weight is recorded at 74 kg, marking steady progress on your fitness journey. \nConsistent weight tracking helps you understand how your body is responding to your training and nutrition plan over time.\nRemember that weight can naturally fluctuate day to day due to water retention, food intake, and muscle recovery — what matters most is the overall trend across weeks, not a single reading. \nIf you're focused on building muscle, a gradual increase alongside strength gains is a good sign. \nIf your goal is fat loss, look for a steady downward trend rather than rapid drops.\nKeep logging your weight regularly, take your progress photos under similar lighting and conditions, and pair this data with how your clothes fit and how you feel in your workouts. \nNumbers tell part of the story — your strength, energy, and consistency tell the rest.",
                style: TextStyle(color: TColor.secondaryText, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_running.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_meal_plan.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_home.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_weight.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child:
                    Image.asset("assets/img/more.png", width: 25, height: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
