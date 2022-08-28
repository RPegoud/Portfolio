class Project {
  final String title, description, imagePath, link;

  Project(
      {required this.title,
      required this.description,
      required this.imagePath,
      required this.link});
}

List<Project> projectsList = [
  Project(
      title: 'Data Science Internship',
      description:
          'Data analysis, NLP classification using Bert, Aspect Base Sentiment Analysis',
      // imagePath: 'images/CEWE-logo.jpg',
      imagePath: 'images/corporate.jpg',
      link: ''),
  Project(
    title: 'Fitness and nutrition App',
    description: 'Building an interactive fitness app with Flutter',
    imagePath: 'images/nutrition_cartoon.jpg',
    link: '',
  ),
  Project(
      title: 'Portofolio websites',
      description:
          'Design, development and deployment of portfolios for health professionals',
      imagePath: 'images/health.jpg',
      link: ''),
  Project(
      title: 'Appointment Web App',
      description:
          'Appointment website, database storage, responsive dashboard',
      imagePath: 'images/appointment.png',
      link: ''),
];
