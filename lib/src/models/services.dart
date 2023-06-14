class Service {
  final String iconUrl;
  final String label;

  Service({
    required this.iconUrl,
    required this.label,
  });
}

final List<Service> services = [
  Service(iconUrl: 'assets/images/coronavirus.png', label: 'Covid'),
  Service(iconUrl: 'assets/images/stethoscope.png', label: 'Doctors'),
  Service(iconUrl: 'assets/images/syringe-outline.png', label: 'Analyzes'),
  Service(iconUrl: 'assets/images/cross.png', label: 'Clinic')
];
