import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 20),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFACADAD),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.menu))
      ],
    );
  }
}
