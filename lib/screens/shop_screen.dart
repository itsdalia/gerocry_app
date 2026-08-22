import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/home_search_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27),
      child: Column(
        children: [
          Center(child: Image.asset("assets/images/carrot.png", width: 30)),

          SizedBox(height: 7.6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          HomeSearchField(),
          SizedBox(height: 20),

          Stack(
            alignment: AlignmentGeometry.bottomCenter,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 119.0,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (i, r) {
                    setState(() {
                      activeIndex = i;
                    });
                  },
                  enableInfiniteScroll: false,
                  reverse: true,
                ),
                items: images
                    .map(
                      (i) => Container(
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.network(i).image,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),

              Positioned(
                bottom: 10,
                left: 140,
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xff53B175),
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> images = [
  'https://media.istockphoto.com/id/1318452948/photo/large-variety-of-food-on-black-background.jpg',
  'https://media.istockphoto.com/id/1449032425/photo/shopping-bag-full-of-healthy-food-on-blue.jpg',
  'https://media.istockphoto.com/id/1318452948/photo/large-variety-of-food-on-black-background.jpg',
  'https://media.istockphoto.com/id/1449032425/photo/shopping-bag-full-of-healthy-food-on-blue.jpg',
];
