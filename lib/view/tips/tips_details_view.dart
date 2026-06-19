import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class TipsDetailView extends StatefulWidget {
  final Map tObj;
  const TipsDetailView({super.key, required this.tObj});

  @override
  State<TipsDetailView> createState() => _TipsDetailViewState();
}

class _TipsDetailViewState extends State<TipsDetailView> {
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
          "Tips",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img/1.png",
              width: media.width,
              height: media.width * 0.55,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.tObj["name"],
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                "Drink water",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Staying hydrated is one of the simplest ways to support your body's daily functions. \nWater helps regulate body temperature, lubricate joints, and deliver nutrients to your cells. \nIt also plays a key role in digestion and helps prevent constipation by keeping your digestive system moving smoothly.\nMost health experts recommend drinking at least 8 glasses (about 2 liters) of water per day, though your needs may increase with exercise, hot weather, or illness. \nA good habit is to start your day with a glass of water and keep a bottle nearby as a reminder. \nPay attention to your urine color — pale yellow usually means you're well hydrated, while dark yellow is a sign you need more fluids.\nDon't wait until you feel thirsty to drink, since thirst is often a sign that you're already mildly dehydrated. \nHerbal teas, fruits, and vegetables with high water content (like cucumber and watermelon) can also contribute to your daily intake.",
                style: TextStyle(color: TColor.secondaryText, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                "Calories",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Calories are units of energy that your body gets from food and drink, and they fuel everything from breathing to exercise. \nUnderstanding your daily calorie needs depends on factors like age, gender, weight, height, and activity level — this is often called your Total Daily Energy Expenditure (TDEE).\nTo maintain your current weight, you should aim to consume roughly the same number of calories you burn. \nTo lose weight, you'd need a calorie deficit (eating less than you burn), while gaining weight requires a calorie surplus. \nHowever, not all calories are equal — 200 calories from vegetables and lean protein will keep you fuller and provide more nutrients than 200 calories from sugary snacks.\nTracking your meals for a few days can help you understand your eating patterns and identify areas for improvement, whether that's reducing portion sizes, cutting back on processed foods, or adding more nutrient-dense options to your diet.",
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
