class Project {
  final String title, description, imagePath, link;
  var isWhite = false;

  Project({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.link,
    this.isWhite = false,
  });
}

List<Project> projectsList = [
  Project(
      title: 'Fitness and nutrition App',
      description: 'Building an interactive fitness app with Flutter',
      imagePath: 'images/healthbar.png',
      link: 'https://nutrition-web-app.web.app/#/',
      isWhite: true),
  Project(
      title: 'Traffic Sign Detection',
      description: 'CNN based detection using PyTorch and the GTRSB dataset',
      imagePath: 'images/pytorch.png',
      link: 'https://github.com/RPegoud/PyTorch_traffic_sign_detection'),
  Project(
      title: 'Satelite images analysis',
      description:
          'Classification of Satelite images, 150h academic project leading to a publication',
      imagePath: 'images/tensorflow.png',
      link: ''),
  Project(
      title: 'Data Science Internship',
      description:
          'Data analysis, NLP classification using Bert, Aspect Base Sentiment Analysis',
      // imagePath: 'images/CEWE-logo.jpg',
      imagePath: 'images/corporate.jpg',
      link: ''),
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
