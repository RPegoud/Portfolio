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
    title: '[Ongoing] University of Alberta: Reinforcement Learning curriculum',
    description: [
      '4 months online degree pursued on Coursera',
      'Section 1: Bandits, Markov Decision Processes, Bellman Equation, Dynamic programming',
      'Section 2: Monte Carlo methods, Temporal Difference Learning, Q-learning, Dyna-Q',
      '[Ongoing] Section 3: Function approximation, Deep RL, Policy gradient, Actor-critic',
      '[Incoming] Section 4: Capstone project'
    ],
  ),
  History(
    title:
        '[Ongoing] BMW : Data Scientist intern - Digital Fleet Management (6 mth)',
    description: [
      'Designed and trained a connectivity forecasting model, with an average error of 1%',
      'Allowed to predict the expected amount of connections for the next day',
      'Designed and implemented a new approach to anomaly detection relying on a single connectivity channel (previously two)',
      'Allowed to detect anomalies lasting a least 10 minutes (previously 24 hours)',
      '[Ongoing] Deployment of the anomaly detection model on AWS'
    ],
  ),
  History(
    title: '[Ongoing] EPF : Data Science master',
    description: [
      '[Top grades] Artificial Intelligence: Machine learning, Deep learning, NLP, Time series forecasting, Computer vision',
      'Maths for Computer science : Linear Algebra, Statistics, Numerical optimization',
      'Data science tools : Virtualization, Data analysis and visualization',
      'Devops: Versioning, CI/CD, conflict resolution',
      'Management : Team management, Scrum methodology'
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
