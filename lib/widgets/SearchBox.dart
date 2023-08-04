import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key, required this.onChanged});

  final dynamic onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          prefixIcon: Icon(Icons.search_rounded, color: tdBlack, size: 20,),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 20,
          ),
          border: InputBorder.none,
          hintText: "  Search",
          hintStyle: TextStyle(color: tdGray,),
        ),
      ),
    );
  }
}
