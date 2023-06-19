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
      title: 'Reinforcement Learning blog',
      description: 'Documenting my learnings and coding projects in RL',
      imagePath: 'images/boxing_robots.jpg',
      link: 'https://rpegoud.github.io/ML_Blog/',
      isWhite: true),
  Project(
      title: 'Traffic Sign Detection',
      description: 'CNN based detection using PyTorch and the GTRSB dataset',
      imagePath: 'images/pytorch.png',
      link: 'https://github.com/RPegoud/PyTorch_traffic_sign_detection'),
  Project(
      title: 'Satelite images analysis',
      description:
          'Classification of Satelite images using TensorFlow, network calibration, active learning',
      imagePath: 'images/tensorflow.png',
      link: ''),
  Project(
      title: 'Fitness and nutrition App',
      description: 'Building an interactive fitness app with Flutter',
      imagePath: 'images/healthbar.png',
      link: 'https://nutrition-web-app.web.app/#/',
      isWhite: true),
  Project(
      title: 'Portofolio websites',
      description:
          'Design, development and deployment of portfolios for health professionals',
      imagePath: 'images/health.jpg',
      link: ''),
];
