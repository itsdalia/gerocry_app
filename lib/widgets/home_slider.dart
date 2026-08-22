import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatelessWidget {
  HomeSlider({super.key});

  final ValueNotifier<int> activeIndexNotifier = ValueNotifier<int>(0);

  final List<String> images = [
    'https://media.istockphoto.com/id/1318452948/photo/large-variety-of-food-on-black-background.jpg',
    'https://media.istockphoto.com/id/1449032425/photo/shopping-bag-full-of-healthy-food-on-blue.jpg',
    'https://media.istockphoto.com/id/1318452948/photo/large-variety-of-food-on-black-background.jpg',
    'https://media.istockphoto.com/id/1449032425/photo/shopping-bag-full-of-healthy-food-on-blue.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119.0,
            autoPlay: true,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            reverse: true,
            onPageChanged: (i, r) {
              // بدل setState، بنحدث القيمة جوه الـ Notifier
              activeIndexNotifier.value = i;
            },
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
          child: ValueListenableBuilder<int>(
            valueListenable: activeIndexNotifier,
            builder: (context, activeIndex, _) {
              return AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: images.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: const Color(0xff53B175),
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 4,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
