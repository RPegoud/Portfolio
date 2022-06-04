class Project {
  final String title, description;
  final String imagePath;

  Project(
      {required this.title,
      required this.description,
      required this.imagePath});
}

List<Project> projects_list = [
  Project(
      title: 'Data science workflow',
      description:
          'API calls, exploration, cleaning, Model selection and validation',
      imagePath: 'images/lights.jpg'),
  Project(
      title: 'Fitness and nutrition App',
      description: 'Building an interactive fitness app with Flutter',
      imagePath: 'images/nutrition.jpg'),
  Project(
      title: 'Data Science Internship',
      description: 'Data analysis and NLP using Bert',
      imagePath: 'images/CEWE-logo.jpg'),
];
