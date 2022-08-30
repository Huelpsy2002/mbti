class DataModel {
  final String imagepath;
  final String title;
  DataModel(this.title, this.imagepath);
}

List<DataModel> datalist = [
  DataModel("enfj", "assests/images/enfj.png"),
  DataModel("enfp", "assests/images/enfp.png"),
  DataModel("entj", "assests/images/entj.png"),
  DataModel("entp", "assests/images/entp.png"),
  DataModel("esfj", "assests/images/esfj.png"),
  DataModel("esfp", "assests/images/esfp.png"),
  DataModel("estj", "assests/images/estj.png"),
  DataModel("estp", "assests/images/estp.png"),
  DataModel("infj", "assests/images/infj.png"),
  DataModel("infp", "assests/images/infp.png"),
  DataModel("intj", "assests/images/intj.png"),
  DataModel("intp", "assests/images/intp.png"),
  DataModel("isfj", "assests/images/isfj.png"),
  DataModel("isfp", "assests/images/isfp.png"),
  DataModel("istj", "assests/images/istj.png"),
  DataModel("istp", "assests/images/istp.png"),
];

class datainfo {
  final String imageinfo;
  final String mbtititle;
  datainfo(this.mbtititle, this.imageinfo);
}

List<datainfo> imageinfo = [
  datainfo("Protagonist", "assests/imageinfo/enfj.jpg"),
  datainfo("Campaigner", 'assests/imageinfo/enfp.jpg'),
  datainfo("Commander", 'assests/imageinfo/entj.jpg'),
  datainfo("Debater", 'assests/imageinfo/entp.jpg'),
  datainfo("Consul", 'assests/imageinfo/esfj.jpg'),
  datainfo("Entertainer", 'assests/imageinfo/esfp.jpg'),
  datainfo("Executive", 'assests/imageinfo/estj.jpg'),
  datainfo("Entrepreneur", 'assests/imageinfo/estp.jpg'),
  datainfo("Advocate", 'assests/imageinfo/infj.jpg'),
  datainfo("Mediator", 'assests/imageinfo/infp.jpg'),
  datainfo("Architect", 'assests/imageinfo/intj.jpg'),
  datainfo("Logician", 'assests/imageinfo/intp.jpg'),
  datainfo("Defender", 'assests/imageinfo/isfj.jpg'),
  datainfo("Adventurer", 'assests/imageinfo/isfp.jpg'),
  datainfo("Logistician", 'assests/imageinfo/istj.jpg'),
  datainfo("Virtuoso", 'assests/imageinfo/istp.jpg'),
];

class mbtiinfo {
  late String mbtiinfoo;
  mbtiinfo(this.mbtiinfoo);
}

List<mbtiinfo> mbtilist = [
  mbtiinfo(
      "Protagonists (ENFJs) feel called to serve a greater purpose in life. Thoughtful and idealistic, these personality types strive to have a positive impact on other people and the world around them. They rarely shy away from an opportunity to do the right thing, even when doing so is far from easy."),
  mbtiinfo(
      "A Campaigner (ENFP) is someone with the Extraverted, Intuitive, Feeling, and Prospecting personality traits. These people tend to embrace big ideas and actions that reflect their sense of hope and goodwill toward others. Their vibrant energy can flow in many directions."),
  mbtiinfo(
      "A Commander (ENTJ) is someone with the Extraverted, Intuitive, Thinking, and Judging personality traits. They are decisive people who love momentum and accomplishment. They gather information to construct their creative visions but rarely hesitate for long before acting on them."),
  mbtiinfo(
      "A Debater (ENTP) is a person with the Extraverted, Intuitive, Thinking, and Prospecting personality traits. They tend to be bold and creative, deconstructing and rebuilding ideas with great mental agility. They pursue their goals vigorously despite any resistance they might encounter."),
  mbtiinfo(
      "A Consul (ESFJ) is a person with the Extraverted, Observant, Feeling, and Judging personality traits. They are attentive and people-focused, and they enjoy taking part in their social community. Their achievements are guided by decisive values, and they willingly offer guidance to others."),
  mbtiinfo(
      "An Entertainer (ESFP) is a person with the Extraverted, Observant, Feeling, and Prospecting personality traits. These people love vibrant experiences, engaging in life eagerly and taking pleasure in discovering the unknown. They can be very social, often encouraging others into shared activities."),
  mbtiinfo(
      "An Executive (ESTJ) is someone with the Extraverted, Observant, Thinking, and Judging personality traits. They possess great fortitude, emphatically following their own sensible judgment. They often serve as a stabilizing force among others, able to offer solid direction amid adversity."),
  mbtiinfo(
      "An Entrepreneur (ESTP) is someone with the Extraverted, Observant, Thinking, and Prospecting personality traits. They tend to be energetic and action-oriented, deftly navigating whatever is in front of them. They love uncovering life’s opportunities, whether socializing with others or in more personal pursuits."),
  mbtiinfo(
      "An Advocate (INFJ) is someone with the Introverted, Intuitive, Feeling, and Judging personality traits. They tend to approach life with deep thoughtfulness and imagination. Their inner vision, personal values, and a quiet, principled version of humanism guide them in all things."),
  mbtiinfo(
      "A Mediator (INFP) is someone who possesses the Introverted, Intuitive, Feeling, and Prospecting personality traits. These rare personality types tend to be quiet, open-minded, and imaginative, and they apply a caring and creative approach to everything they do."),
  mbtiinfo(
      "An Architect (INTJ) is a person with the Introverted, Intuitive, Thinking, and Judging personality traits. These thoughtful tacticians love perfecting the details of life, applying creativity and rationality to everything they do. Their inner world is often a private, complex one."),
  mbtiinfo(
      "A Logician (INTP) is someone with the Introverted, Intuitive, Thinking, and Prospecting personality traits. These flexible thinkers enjoy taking an unconventional approach to many aspects of life. They often seek out unlikely paths, mixing willingness to experiment with personal creativity."),
  mbtiinfo(
      "A Defender (ISFJ) is someone with the Introverted, Observant, Feeling, and Judging personality traits. These people tend to be warm and unassuming in their own steady way. They’re efficient and responsible, giving careful attention to practical details in their daily lives."),
  mbtiinfo(
      "An Adventurer (ISFP) is a person with the Introverted, Observant, Feeling, and Prospecting personality traits. They tend to have open minds, approaching life, new experiences, and people with grounded warmth. Their ability to stay in the moment helps them uncover exciting potentials."),
  mbtiinfo(
      "A Logistician (ISTJ) is someone with the Introverted, Observant, Thinking, and Judging personality traits. These people tend to be reserved yet willful, with a rational outlook on life. They compose their actions carefully and carry them out with methodical purpose."),
  mbtiinfo(
      "A Virtuoso (ISTP) is someone with the Introverted, Observant, Thinking, and Prospecting personality traits. They tend to have an individualistic mindset, pursuing goals without needing much external connection. They engage in life with inquisitiveness and personal skill, varying their approach as needed.")
];

class description {
  String desciption;
  description(this.desciption);
}

List<description> disciption_list = [
  description('serve a greater purpose in life. Thoughtful and idealistic'),
  description('Extraverted, Intuitive\nFeeling,and Prospecting'),
  description('Extraverted, Intuitive\nThinking,and Judging'),
  description('Extraverted, Intuitive\nThinking,and Prospecting'),
  description('Extraverted, Observant\nFeeling,and Judging'),
  description('Extraverted, Observant\nFeeling,and Judging'),
  description('Extraverted, Observant\nThinking,and Judging'),
  description('Extraverted, Observant\nThinking,and Prospecting'),
  description('Introverted, Intuitive\nFeeling,and Judging'),
  description('Introverted, Intuitive\nFeeling,and Prospecting'),
  description('Introverted, Intuitive\nThinking,and Judging'),
  description('Introverted, Intuitive\nThinking,and Prospecting'),
  description('Introverted, Observant\nFeeling,and Judging'),
  description('Introverted, Observant\nFeeling,and Prospecting'),
  description('Introverted, Observant\nThinking,and Judging'),
  description('Introverted, Observant\nThinking,and Prospecting'),
];
