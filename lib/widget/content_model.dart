

class UnboardingContent{
  String image;
  String title;
  String description;

  UnboardingContent({required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(description: 'pick something for you',
  image: 'images/login1.png', title: 'Select from our  Best Menu'),
  UnboardingContent(description: 'you can pay cash on delivery and card payment', 
  image: 'images/register.png', title:'Easy and online')
];