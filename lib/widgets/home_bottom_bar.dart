import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  final double iconSize; //

  HomeBottomBar({this.iconSize = 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF8B4513),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon(Icons.home),
          _buildIcon(Icons.favorite_outlined),
          _buildIcon(Icons.notifications),
          _buildIcon(Icons.person),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon) {
    return SizedBox(
      height: 50,
      child: Align(
        alignment: Alignment.topCenter,
        child: Icon(
          icon,
          color: Color(0xFFFFFFFF),
          size: 35,
        ),
      ),
    );
  }
}