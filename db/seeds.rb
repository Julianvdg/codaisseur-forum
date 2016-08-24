Answer.delete_all
Question.delete_all
Profile.delete_all
User.delete_all
Topic.delete_all


javascript= Topic.create( title: 'Javascript' )
ruby      = Topic.create( title: 'Ruby' )
rails     = Topic.create( title: 'Rails' )
cases     = Topic.create( title: 'Cases' )
html      = Topic.create( title: 'Html' )
ajax      = Topic.create( title: 'Ajax' )
jquery    = Topic.create( title: 'JQuery' )
sinatra   = Topic.create( title: 'Sinatra' )

matthijs = User.create( email: 'matthijs@test.com', password: 'abcd1234', role: 'student', approved: true )
ruben = User.create( email: 'ruben@test.com', password: 'abcd1234', role: 'student', approved: true )
nienke = User.create( email: 'nienke@test.com', password: 'abcd1234', role: 'student', approved: true )
juliang = User.create( email: 'juliang@test.com', password: 'abcd1234', role: 'student', approved: true )
julianh = User.create( email: 'julianh@test.com', password: 'abcd1234', role: 'student', approved: true )
miriam = User.create( email: 'miriam@test.com', password: 'abcd1234', role: 'teacher', approved: true )
admin = User.create( email: 'admin@test.com', password: 'abcd1234', role: 'admin', approved: true )

Profile.create([
  {
    first_name: 'Matthijs',
    last_name: 'van den Berg',
    avatar: 'https://avatars0.githubusercontent.com/u/16759160?v=3&s=460',
    bio: 'Call park out she wife face mean. Invitation excellence imprudence understood it continuing to.',
    github: 'Ecthelion3',
    twitter: 'ecthelion3',
    website: '',
    student_class: 4,
    user: matthijs
  },
  {
    first_name: 'Ruben',
    last_name: 'Sloote',
    avatar: 'https://avatars3.githubusercontent.com/u/20690371?v=3&s=460',
    bio: 'Ye show done an into. Fifteen winding related may hearted colonel are way studied.',
    github: 'RubenSloote',
    twitter: '',
    website: '',
    student_class: 4,
    user: ruben
  },
  {
    first_name: 'Nienke',
    last_name: 'Bos',
    avatar: 'https://avatars2.githubusercontent.com/u/20145582?v=3&s=460',
    bio: 'County suffer twenty or marked no moment in he. Meet shew or said like he.',
    github: 'nienkebos',
    twitter: 'miriamtocino',
    website: '',
    student_class: 4,
    user: nienke
  },
  {
    first_name: 'Julian',
    last_name: 'van der Giesen',
    avatar: 'https://avatars0.githubusercontent.com/u/6368911?v=3&s=460',
    bio: 'Valley silent cannot things so remain oh to elinor. Far merits season better tended any age hunted.',
    github: 'Julianvdg',
    twitter: 'Julianvdg',
    website: 'http://webhippy.com/',
    student_class: 4,
    user: juliang
  },
  {
    first_name: 'Julian',
    last_name: 'Hoogendoorn',
    avatar: 'https://avatars2.githubusercontent.com/u/20745645?v=3&s=460',
    bio: 'Lose john poor same it case do year we. Full how way even the sigh.',
    github: 'ijscoman1337',
    twitter: '',
    website: '',
    student_class: 4,
    user: julianh
  },
  {
    first_name: 'Miriam',
    last_name: 'Tocino',
    avatar: 'http://www.miriamtocino.com/images/me.jpg',
    bio: 'Extremely nor furniture fat questions now provision incommode preserved. Our side fail find like now.',
    github: 'miriamtocino',
    twitter: '',
    website: 'http://miriamtocino.com/',
    user: miriam
  },
  {
    first_name: 'Wouter',
    last_name: 'de Vos',
    avatar: 'https://avatars0.githubusercontent.com/u/309331?v=3&s=460',
    bio: 'Discovered travelling for insensible partiality unpleasing impossible she.',
    github: 'foxycoder',
    twitter: 'wrdevos',
    website: 'https://www.developmentbootcamp.nl/t',
    user: admin
  }
])

question1 = Question.create( title: "How to implement Devise into your ruby app?", body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google", user: matthijs, topic: ruby)
question2 = Question.create( title: "How to implement Devise into your rails app?", body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google", user: matthijs, topic: rails )
question3 = Question.create( title: "How to implement Ajax into your rails app?", body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google", user: matthijs, topic: javascript )

Answer.create([
  {
    body: "Humblebrag helvetica etsy leggings. IPhone butcher authentic XOXO, actually cred affogato knausgaard mlkshk. Knausgaard shoreditch waistcoat tacos irony salvia. Portland shoreditch stumptown aesthetic raw denim craft beer gluten-free, next level pickled. Drinking vinegar heirloom pickled humblebrag shabby chic.", user: ruben, question: question1
  },
  {
    body: "Narwhal kombucha pug disrupt VHS whatever, pickled sustainable kale chips small batch schlitz. Godard cardigan venmo freegan VHS intelligentsia heirloom chia shabby chic, knausgaard meggings ethical cronut schlitz.", user: nienke, question: question1
  },
  {
    body: "Put a bird on it tote bag mumblecore, lomo waistcoat craft beer pork belly shabby chic. Tacos green juice microdosing whatever, migas squid flannel asymmetrical wayfarers dreamcatcher stumptown twee.", user: julianh, question: question2
  },
  {
    body: "Selvage flannel hashtag, actually tilde cold-pressed truffaut 90's.", user: juliang, question: question3
  },
  {
    body: "Occupy ugh gochujang, swag hammock gentrify cardigan jean shorts meggings food truck synth biodiesel pork belly DIY four dollar toast.", user: miriam, question: question3
  }
  ])
