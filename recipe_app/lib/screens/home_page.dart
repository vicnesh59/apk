import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/utilities/colors.dart';
import 'package:recipe_app/models/RecipeItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> menuItems = ['Breakfast', 'Lunch', 'Dinner', 'Snacks', 'Brunch'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGroundColor,
      body: SafeArea(
          child: Column(
        children: [
          header(),
          const SizedBox(
            height: 30,
          ),
          searchField(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular menus',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          scrollList(),
          const SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(items.length, (index) {
                final recipe = items[index];
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 20, right: 10)
                      : const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(recipe.image),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    recipe.fav ? Colors.red : Colors.black45),
                            child: const Icon(Iconsax.heart,
                                color: Colors.white, size: 18.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black45),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        recipe.name,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 18.0,
                                          color: Colors.amberAccent,
                                        ),
                                        Text(
                                          "${recipe.rate}",
                                          style: const TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '1 Bowl ${recipe.weight}g',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '${recipe.calorie} Khal | 25% AKG',
                                  style: const TextStyle(color: Colors.white70),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 40.0,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  SingleChildScrollView scrollList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            menuItems.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(colors: [
                            selectedIndex == index
                                ? Colors.green
                                : Colors.white,
                            selectedIndex == index
                                ? Colors.greenAccent
                                : Colors.white
                          ])),
                      child: Text(
                        menuItems[index],
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                )).toList(),
      ),
    );
  }

  Padding searchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: searchBarColor),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black45,
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.black45)),
        ),
      ),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          const Text.rich(TextSpan(children: [
            TextSpan(text: 'Hello Peter\n', style: TextStyle(fontSize: 16)),
            TextSpan(
                text: 'What do you want to eat today!',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ))
          ])),
          const Spacer(),
          Stack(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://img.magnific.com/free-photo/young-businessman-using-mobile-phone-office-looking-camera_637285-8766.jpg?semt=ais_hybrid&w=740&q=80"),
              ),
              Positioned(
                  top: 1,
                  right: 1,
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
