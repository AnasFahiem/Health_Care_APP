import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'dart:io';

// ignore: must_be_immutable
class PostWidget extends StatefulWidget {
  PostWidget({
    super.key,
    @required this.name,
    @required this.image,
    @required this.subtitle,
    @required this.post,
    @required this.postImage,
    @required this.postImageFile,
  });
  String? name;
  String? image;
  String? subtitle;
  String? post;
  String? postImage;
  File? postImageFile;
  Icon icon1 = const Icon(
    FontAwesomeIcons.thumbsUp,
    color: Colors.teal,
  );

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(widget.image!),
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.name!,
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.verified,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.subtitle!,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Follow",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          color: Colors.tealAccent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.tealAccent,
                  width: 0.5,
                ),
              ),
              child: Column(
                children: [
                  ReadMoreText(
                    widget.post!,
                    textDirection: TextDirection.ltr,
                    trimLines: 3,
                    colorClickableText: Colors.teal,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '..Show more',
                    trimExpandedText: ' show less',
                    moreStyle: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: widget.postImage != null
                        ? Image.asset(widget.postImage!)
                        : Image.file(widget.postImageFile!),
                    // CircleAvatar(
                    //   backgroundImage: AssetImage(widget.postImage),
                    //   radius: 150,
                    // ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 8,
              ),
              const Icon(
                FontAwesomeIcons.solidThumbsUp,
                color: Colors.teal,
                size: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "1.5k",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.teal,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.icon1 ==
                          const Icon(
                            FontAwesomeIcons.thumbsUp,
                            color: Colors.teal,
                          )) {
                        widget.icon1 = const Icon(
                          FontAwesomeIcons.solidThumbsUp,
                          color: Colors.teal,
                        );
                      }
                    });
                  },
                  child: Row(
                    children: [
                      widget.icon1,
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Like",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Comment",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.share_outlined,
                        color: Colors.teal,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Share",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
