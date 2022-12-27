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
    title: 'BMW - Intern in Digital Fleet Management',
    description: [
      'Time series / sequence-based anomalies for individual vehicles',
      'Definition of optimality criterion, implementation of hyperparameter search'
    ],
  ),
  History(
    title: '[Ongoing] EPF : Data Science master',
    description: [
      'Maths for Computer science : Linear Algebra, Statistics, Numerical optimization',
      'Data science tools : Virtualization, Data analysis and visualization, Machine learning',
      'Management : Team management, continuous integration, conflict resolution'
    ],
  ),
  History(
    title: 'CEWE - Summer fixed-term contract (6 wk)',
    description: [
      'Aspect based Sentiment analysis: getting insights from customer reviews (classification / sentiment analysis)',
      'Timeseries prediction using Neural Prophet: predicting the number of incoming calls and emails to optimize staff schedules'
    ],
  ),
  History(
    title: 'CEWE - Data science internship (6 mth)',
    description: [
      'Data exploration, model selection and validation',
      'Natural Language Processing, multilingual classification, clustering, active learning',
      'Implementation of advanced ML techniques such as temperature scaling for neural networks',
      'Creation of an active learning web application',
      'Result : Creation of a multilingual classification model (93% F1-score) currently used in production',
    ],
  ),
  History(
    title: 'Freelance web programming',
    description: [
      'Website development, database management, responsive design',
      'Development of portfolio webiste for health professionals',
      'Creation of booking websites (userside) and responsive dashboards (clientside)',
    ],
  ),
];
