class Doctor {
  final String doctorName;
  final String aviUrl;
  final String time;
  final String date;

  Doctor(
      {required this.doctorName,
      required this.aviUrl,
      required this.time,
      required this.date});
}

final List<Doctor> doctors = [
  Doctor(
      doctorName: 'Dr. Helena Holk',
      aviUrl: 'assets/images/nursepic.jpg',
      time: '09:00-10:00',
      date: '10 Dec 2021'),
  Doctor(
      doctorName: 'Dr. Hakeem Khalifa',
      aviUrl: 'assets/images/doc3.jpeg',
      time: '10:00-11:00',
      date: '17 Dec 2021'),
  Doctor(
      doctorName: 'Dr. Ryan Arthur',
      aviUrl: 'assets/images/newdoc.webp',
      time: '14:30-15:30',
      date: '24 Dec 2021')
];
