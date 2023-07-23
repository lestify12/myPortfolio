class workExperience {
  final String? name, position, year, description;

  workExperience({this.name, this.position, this.year, this.description});
}

final List<workExperience> work_experience = [
  workExperience(
      name: 'Atlas Creative Groups',
      position: 'Sales Team Leader',
      year: '2019',
      description:
          'Experienced in Photoshop, video editing, and Facebook advertising. Led successful sales-driven social media campaigns, driving traffic to Shopify.'),
  workExperience(
    name: 'Zetta Solutions Inc.',
    position: 'Mobile Application Support',
    year: '2021-2022',
    description:
        'Remote application support specialist with a focus on Modern Jeepneys projects. Proficient in bug fixing and error resolution. Designed UI for a jeepney-focused e-wallet using Flutter, streamlining development with FlutterFlow.',
  ),
  workExperience(
    name: 'Lear Corporation',
    position: 'On-the-job Training',
    year: '2022',
    description:
        'Excel data management expert with VBA proficiency. Streamlined processes with custom macros, reducing redundancy. Leveraged Power BI for data analytics, creating insightful visualizations for weekly meetings.',
  )
];
