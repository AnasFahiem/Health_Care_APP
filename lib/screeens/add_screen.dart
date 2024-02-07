import 'dart:io';
import 'package:fittech_app/data/posts.dart';
import 'package:fittech_app/screeens/home_bage.dart';
import 'package:fittech_app/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});
  static const routeName = "/add-screen";

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  File? _media;
  final _formKey = GlobalKey<FormState>();
  String? _post = "";

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Create post",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.check),
            onPressed: () {
              _save(context);
            },
            color: Colors.tealAccent,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mediaquery.height * .3,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your post";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _post = value!;
                  },
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  maxLines: 200,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: "What's in your mind ?",
                    hintStyle: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: mediaquery.width,
                    height: mediaquery.height * .7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: _media != null
                          ? Border.all(color: Colors.teal, width: 2)
                          : null,
                    ),
                    child: _media != null
                        ? Image.file(
                            _media!,
                            fit: BoxFit.contain,
                          )
                        : null,
                  ),
                  FloatingActionButton.small(
                    onPressed: () {
                      setState(() {
                        _media = null;
                      });
                    },
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child: _media != null
                        ? const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        : null,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            heroTag: "btn1",
            onPressed: _takePhoto,
            backgroundColor: const Color.fromARGB(255, 21, 21, 21),
            elevation: 5,
            child: const Icon(
              Icons.add_a_photo_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: _pickPhoto,
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.add_photo_alternate_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     CircleAvatar(
    //       radius: 50,
    //       backgroundImage: _media != null ? FileImage(_media!) : null,
    //       backgroundColor: Colors.teal,
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         IconButton(
    //           onPressed: _takePhoto,
    //           icon: Icon(
    //             Icons.add_a_photo_outlined,
    //             color: Colors.teal,
    //           ),
    //         ),
    //         SizedBox(width: 10),
    //         IconButton(
    //             onPressed: _pickPhoto,
    //             icon: Icon(Icons.photo_library_outlined, color: Colors.teal)),
    //       ],
    //     ),
    //   ],
    // );
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _media = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickPhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickMedia();
    if (pickedFile != null) {
      setState(() {
        _media = File(pickedFile.path);
      });
    }
  }

  void _save(context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      setState(
        () {
          posts.insert(
            0,
            PostWidget(
              name: "Anas Fahiem",
              image: "assets/me.jpg",
              post: _post!,
              postImageFile: _media!,
              subtitle: "2h ago",
            ),
          );
          Navigator.of(context).pushReplacementNamed(HomeBage.routeName);
        },
      );
    }
  }
}
