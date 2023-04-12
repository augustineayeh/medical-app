import 'package:medical_app/ui/appointment/appointment.dart';

class Complaint extends StatelessWidget {
  const Complaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: 7,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(top: 10, bottom: 15, left: 20),
            hintText: 'Write your complaint here...',
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
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chat()),
            );
          }),
          child: Container(
              width: 400,
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFFe6964c),
                  borderRadius: BorderRadius.circular(15)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Make an AppointmentScreen',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
        )
      ],
    );
  }
}
