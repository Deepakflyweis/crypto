
class IntroWelcome{
  String ? image;
  String ? title;
  String ? discription;

  IntroWelcome({this.image,this.title,this.discription});

}
List <IntroWelcome> contents = [
  IntroWelcome( 
    title: 'Save and invest at the same time',
    image:'assets/images/img1.png',
    discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium nisl sed ex ornare, sed posuere dui pharetra.",

  ),
  IntroWelcome( 
    title: 'Trade anytime anywhere',
    image:'assets/images/img2.png',
    discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium nisl sed ex ornare, sed posuere dui pharetra.",
  ),
  IntroWelcome( 
    title: 'Transact fast and easy',
    image:'assets/images/img3.png',
    discription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu velit neque, placerat netus pharetra.',

  )

];