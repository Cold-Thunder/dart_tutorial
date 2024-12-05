
class MyTexts{
  static String homePageHeading = 'Find you Dream Job with Us';

  static String bestMatchHeading = 'Best Matches';

  static String newHiring = 'New Hiring';

}

class BestMatchCardsTexts{
  static List<Map> jobPosts = [
    {
      'image' : 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
      'title' : 'UX Designer',
      'company': 'Instagram',
      'location': 'Manio Park, California',
      'time': '1 day ago'
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
      'title': 'Scrum Master',
      'company': 'Khan Academy',
      'location': 'Dubai, United Arab Emirates',
      'time': '2 days ago'
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg',
      'title' : 'Technologist',
      'company': 'Twitter',
      'location': 'Singapur City, Singapur',
      'time': '7 days ago'
    },
  ];

}

class NewHiringTexts{
  static List<Map> newHiringJobPosts = [
    {
      'image' : 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
      'title': "Software Engineer",
      'location': 'San Francisco, United States',
      'types': [
        'Part Time',
        'Remote'
      ]
    },
    {
      'image' : 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
      'title': 'Product Manager',
      'location': 'Sydney, Australia',
      'types': [
        'Full Time',
        'Onsite',
        '+2'
      ]
    },
    {
      'image' : 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
      'title': 'Quality Assurance Analyst',
      'location': 'Dubai, United Arab Emirates',
      'types': [
        'Full Time',
        'Remote'
      ]
    }
  ];
}