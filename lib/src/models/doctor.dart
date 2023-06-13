class Doctor {
  final String doctorName;
  final String aviUrl;
  final String time;
  final String date;

  Doctor(this.doctorName, this.aviUrl, this.time, this.date);
}

final List<Doctor> doctors = [
  Doctor('Dr. Helena Holk', 'assets/images/nursepic.jpg', '09:00-10:00',
      '10 Dec 2021'),
  Doctor('Dr. Hakeem Khalifa', 'assets/images/doc3.jpeg', '10:00-11:00',
      '17 Dec 2021'),
  Doctor('Dr. Ryan Arthur', 'assets/images/newdoc.webp', '14:30-15:30',
      '24 Dec 2021')
];
