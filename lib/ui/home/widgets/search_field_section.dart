import 'package:flutter/material.dart';

class SearchFieldSection extends StatelessWidget {
  const SearchFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //! Use TextField instead of Container for input
        //! Wrap the Textfield in an Expanded if you are going to
        //! use it in a Row with other widgets
        // SizedBox(

        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Padding(
        //     padding: const EdgeInsets.only(
        //         top: 10, bottom: 10, left: 20, right: 20),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: const [
        //         Text(
        //           'Search',
        //           style: TextStyle(color: Colors.grey),
        //         ),
        //         Icon(Icons.search,)
        //       ],
        //     ),
        //   ),
        // ),
        // ),
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
                suffixIconConstraints:
                    const BoxConstraints(maxWidth: 150, maxHeight: 40),
                fillColor: const Color(0xFFACADAD),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFACADAD),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFACADAD),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
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
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.menu),
            ))
      ],
    );
  }
}
