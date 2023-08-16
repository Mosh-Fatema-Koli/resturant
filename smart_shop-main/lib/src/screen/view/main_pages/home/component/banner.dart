
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerImageCarousel extends StatelessWidget {

  List<String> bannerImages = [
    'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    // Add more image URLs as needed
  ];
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 180, // Adjust the height as per your requirement
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          initialPage: 1,
          autoPlay: true,


        ),
        items: bannerImages.map((imageURL) {
          return Builder(
            builder: (BuildContext context) {
              return Image.network(
                imageURL,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}