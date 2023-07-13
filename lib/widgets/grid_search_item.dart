import 'package:fittech_app/data/Categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridSearchItem extends StatelessWidget {
  const GridSearchItem({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("${categories.indexOf(this)} ${this.title}");
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.teal, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  image,
                  color: Colors.teal[200],
                  cacheHeight: 100,
                  cacheWidth: 100,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: Colors.teal[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              )
            ],
          )),
    );
  }
}
