import 'package:flutter/material.dart';

class ImageSquare extends StatelessWidget {
  final String image;
  final String title;
  final bool showStar;
  final bool isStar;
  final Function setStar;
  final int realIndex;
  final int totalIndex;

  ImageSquare(
      {this.image,
      this.title,
      this.showStar,
      this.isStar,
      this.setStar,
      this.realIndex,
      this.totalIndex});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              AspectRatio(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
                aspectRatio: 1 / 1,
              ),
              Container(
                child: Padding(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                color: Color(0xCCFFFFFF),
              )
            ],
          ),
          Visibility(
            child: Padding(
              child: Container(
                child: GestureDetector(
                    child: Icon(
                      (isStar) ? Icons.star : Icons.star_border,
                      color: Colors.black,
                    ),
                    onTap: () {
                      if (totalIndex < 0) {
                        setStar(realIndex);
                      } else {
                        setStar(totalIndex);
                      }
                    }),
                padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xCCFFFFFF),
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            visible: showStar,
          ),
        ],
      ),
    );
  }
}
