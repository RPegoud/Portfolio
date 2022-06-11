class History {
  final String title;
  final List<String> description;

  History({
    required this.title,
    required this.description,
  });
}

List<History> historyList = [
  History(
    title: '[Ongoing] EPF Data Engineering Major',
    description: [
      'Maths for Computer science : Linear Algebra, Statistics, Numerical optimization',
      'Data science tools : Virtualization, Data analysis and visualization, Machine learning',
      'Management : Team management, continuous integration, conflict resolution'
    ],
  ),
  History(
    title: 'Data science internship',
    description: [
      'Natural Language Processing, data analysis, model selection and validation',
      'Research, implementation of advanced ML techniques such as temperature scaling for neural networks',
      'Aspect Based Sentiment analysis, getting insights from customer reviews',
      'Result : Creation of a multilingual classification model (93% accuracy) currently used in production',
    ],
  ),
  History(
    title: 'Freelance web programming',
    description: [
      'Website development, database management, responsive design',
      'Creation of a visualization tool for professionals to track their appointments',
    ],
  ),
];
