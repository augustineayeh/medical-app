class ServiceModel {
  final String iconUrl;
  final String label;

  ServiceModel({
    required this.iconUrl,
    required this.label,
  });
}

final List<ServiceModel> services = [
  ServiceModel(iconUrl: 'assets/images/coronavirus.png', label: 'Covid'),
  ServiceModel(iconUrl: 'assets/images/stethoscope.png', label: 'Doctors'),
  ServiceModel(iconUrl: 'assets/images/syringe-outline.png', label: 'Analyzes'),
  ServiceModel(iconUrl: 'assets/images/cross.png', label: 'Clinic')
];
