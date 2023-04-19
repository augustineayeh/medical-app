import 'package:flutter/material.dart';

class OurServicesWidget extends StatelessWidget {
  const OurServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Our Services',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2e3253),
                )),
            Text('See More',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFe6964c),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/coronavirus.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Covid',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2e3253),
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/stethoscope.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Doctors',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2e3253),
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/syringe-outline.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Analyzes',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2e3253),
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/cross.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Clinic',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2e3253),
                    ))
              ],
            ),
          ],
        ),
        //! The labels of the services should be under the container
        //! in a column
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: const [
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Image.asset(
        //       'assets/images/coronavirus.png',
        //       height: 30,
        //       width: 30,
        //     ),
        //   ),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Image.asset(
        //       'assets/images/stethoscope.png',
        //       height: 30,
        //       width: 30,
        //     ),
        //   ),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Image.asset(
        //       'assets/images/syringe-outline.png',
        //       height: 30,
        //       width: 30,
        //     ),
        //   ),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Image.asset(
        //       'assets/images/cross.png',
        //       height: 30,
        //       width: 30,
        //     ),
        //   ),
        // ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // SizedBox(
        //   width: 380,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: const [
        //       // Text('Covid',
        //       //     style: TextStyle(
        //       //       fontSize: 15,
        //       //       color: Color(0xFF2e3253),
        //       //     )),
        //       // Text('Doctors',
        //       //     style: TextStyle(
        //       //       fontSize: 15,
        //       //       color: Color(0xFF2e3253),
        //       //     )),
        //       // Text('Analyzes',
        //       //     style: TextStyle(
        //       //       fontSize: 15,
        //       //       color: Color(0xFF2e3253),
        //       //     )),
        //       // Text('Clinic',
        //       //     style: TextStyle(
        //       //       fontSize: 15,
        //       //       color: Color(0xFF2e3253),
        //       //     ))
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
