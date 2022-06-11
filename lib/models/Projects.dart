class Project {
  final String title, description, imagePath, link;

  Project(
      {required this.title,
      required this.description,
      required this.imagePath,
      required this.link});
}

List<Project> projects_list = [
  Project(
      title: 'Data science workflow',
      description:
          'API calls, exploration, cleaning, Model selection and validation',
      imagePath: 'images/spotify.jpg',
      link: ''),
  Project(
    title: 'Fitness and nutrition App',
    description: 'Building an interactive fitness app with Flutter',
    imagePath: 'images/nutrition.jpg',
    link: 'https://github.com/RPegoud/App_project',
  ),
  Project(
      title: 'Data Science Internship',
      description:
          'Data analysis, NLP classification using Bert and Aspect Base Sentiment Analysis',
      imagePath: 'images/CEWE-logo.jpg',
      link: ''),
        Project(
      title: 'Appointment Web App',
      description:
          'Appointment website, database storage, responsive dashboard',
      imagePath: 'images/appointment.png',
      link: ''),
];
