import 'package:flutter/material.dart';

class ContentCategoryWidget extends StatelessWidget {
  final List<String> images;
  final String title;
  final double imageH;
  final double imageW;

  const ContentCategoryWidget(
      {this.images, this.title, this.imageH, this.imageW});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Orbitron',
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          height: imageH,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: imageW,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(images[index]),
                    alignment: Alignment.center,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
