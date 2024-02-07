import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const SearchBarWidget({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      constraints: BoxConstraints(
        maxHeight: 40,
        maxWidth: MediaQuery.of(context).size.width * 0.8,
      ),
      side: MaterialStateBorderSide.resolveWith(
          (states) => const BorderSide(color: Colors.teal, width: 1)),
      hintText: "Search",
      hintStyle: MaterialStateTextStyle.resolveWith(
          (states) => GoogleFonts.poppins(color: Colors.teal[800])),
      leading: const Icon(
        Icons.search,
        color: Colors.teal,
        size: 25,
      ),
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
    );
  }
}
