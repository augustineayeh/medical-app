class Doctor {
  final String name;
  final String imageUrl;
  final String time;
  final String date;

  Doctor(
      {required this.name,
      required this.imageUrl,
      required this.time,
      required this.date});
}

final List<Doctor> doctors = [
  Doctor(
      name: 'Dr. Helena Holk',
      imageUrl: 'assets/images/nursepic.jpg',
      time: '09:00-10:00',
      date: '10 Dec 2021'),
  Doctor(
      name: 'Dr. Hakeem Khalifa',
      imageUrl: 'assets/images/doc3.jpeg',
      time: '10:00-11:00',
      date: '17 Dec 2021'),
  Doctor(
      name: 'Dr. Ryan Arthur',
      imageUrl: 'assets/images/newdoc.webp',
      time: '14:30-15:30',
      date: '24 Dec 2021')
];
