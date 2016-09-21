Answer.delete_all
Question.delete_all
Profile.delete_all
User.delete_all
Course.delete_all
Topic.delete_all

javascript          = Topic.create( title: "Javascript" )
java                = Topic.create( title: "Java" )
php                 = Topic.create( title: "PHP" )
ruby                = Topic.create( title: "Ruby" )
rails               = Topic.create( title: "Rails" )
cases               = Topic.create( title: "Cases" )
html                = Topic.create( title: "HTML" )
ajax                = Topic.create( title: "Ajax" )
jquery              = Topic.create( title: "JQuery" )
sinatra             = Topic.create( title: "Sinatra" )
generaldiscussion   = Topic.create( title: "General Discussion" )
css                 = Topic.create( title: "CSS" )
android             = Topic.create( title: "Android" )
databases           = Topic.create( title: "Databases" )
design              = Topic.create( title: "Design" )
developmenttools    = Topic.create( title: "Development Tools" )
ios                 = Topic.create( title: "iOS" )
python              = Topic.create( title: "Python" )
react               = Topic.create( title: "React")
wordpress           = Topic.create( title: "Wordpress")

traineeship1 = Course.create( name: "Traineeship 1", starting_at: Date.new(2016,2), ending_at: Date.new(2016,3) )
traineeship2 = Course.create( name: "Traineeship 2", starting_at: Date.new(2016,4), ending_at: Date.new(2016,5) )
traineeship3 = Course.create( name: "Traineeship 3", starting_at: Date.new(2016,6), ending_at: Date.new(2016,7) )
traineeship4 = Course.create( name: "Traineeship 4", starting_at: Date.new(2016,8), ending_at: Date.new(2016,9) )
traineeship5 = Course.create( name: "Traineeship 5", starting_at: Date.new(2016,10), ending_at: Date.new(2016,11) )

matthijs = User.create( email: "matthijs@test.com", password: "abcd1234", role: "student", approved: true )
ruben = User.create( email: "ruben@test.com", password: "abcd1234", role: "student", approved: true )
nienke = User.create( email: "nienke@test.com", password: "abcd1234", role: "student", approved: true )
juliang = User.create( email: "juliang@test.com", password: "abcd1234", role: "student", approved: true )
julianh = User.create( email: "julianh@test.com", password: "abcd1234", role: "student", approved: true )
miriam = User.create( email: "miriam@test.com", password: "abcd1234", role: "teacher", approved: true )
admin = User.create( email: "admin@test.com", password: "abcd1234", role: "admin", approved: true )

pr_matthijs = Profile.create(
  first_name: "Matthijs",
  last_name: "van den Berg",
  avatar: open("https://avatars0.githubusercontent.com/u/16759160?v=3&s=460"),
  bio: "Call park out she wife face mean. Invitation excellence imprudence understood it continuing to.",
  github: "Ecthelion3",
  twitter: "ecthelion3",
  course: traineeship4,
  user: matthijs
)
pr_ruben = Profile.create(
  first_name: "Ruben",
  last_name: "Sloote",
  avatar: open("https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"),
  bio: "Ye show done an into. Fifteen winding related may hearted colonel are way studied.",
  github: "RubenSloote",
  course: traineeship4,
  user: ruben
)
pr_nienke = Profile.create(
  first_name: "Nienke",
  last_name: "Bos",
  avatar: open("https://avatars2.githubusercontent.com/u/20145582?v=3&s=460"),
  bio: "County suffer twenty or marked no moment in he. Meet shew or said like he.",
  github: "nienkebos",
  course: traineeship4,
  user: nienke
)
pr_juliang = Profile.create(
  first_name: "Julian",
  last_name: "van der Giesen",
  avatar: open("https://avatars0.githubusercontent.com/u/6368911?v=3&s=460"),
  bio: "Valley silent cannot things so remain oh to elinor. Far merits season better tended any age hunted.",
  github: "Julianvdg",
  twitter: "Julianvdg",
  website: "http://webhippy.com/",
  course: traineeship4,
  user: juliang
)
pr_julianh = Profile.create(
  first_name: "Julian",
  last_name: "Hoogendoorn",
  avatar: open("https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"),
  bio: "Lose john poor same it case do year we. Full how way even the sigh.",
  github: "ijscoman1337",
  course: traineeship4,
  user: julianh
)
pr_miriam = Profile.create(
  first_name: "Miriam",
  last_name: "Tocino",
  avatar: open("http://www.miriamtocino.com/images/me.jpg"),
  bio: "Extremely nor furniture fat questions now provision incommode preserved. Our side fail find like now.",
  github: "miriamtocino",
  website: "http://miriamtocino.com/",
  user: miriam
)
pr_admin = Profile.create(
  first_name: "Wouter",
  last_name: "de Vos",
  avatar: open("https://avatars0.githubusercontent.com/u/309331?v=3&s=460"),
  bio: "Discovered travelling for insensible partiality unpleasing impossible she.",
  github: "foxycoder",
  twitter: "wrdevos",
  website: "https://www.developmentbootcamp.nl/t",
  user: admin
)

question1 = Question.create(
  title: "No in he real went find mr. Wandered or strictly raillery stanhill as?",
  body: "She who arrival end how fertile enabled. Brother she add yet see minuter natural smiling article painted. Themselves at dispatched interested insensible am be prosperous reasonably it.

  In either so spring wished. Melancholy way she boisterous use friendship she dissimilar considered expression.",
  user: matthijs,
  topic: ruby
)
question2 = Question.create(
  title: "Jennings appetite disposed me an at subjects an?",
  body: "Celebrated contrasted discretion him sympathize her collecting occasional. Do answered bachelor occasion in of offended no concerns. Supply worthy warmth branch of no ye. Voice tried known to as my to. Though wished merits or be.

  Alone visit use these smart rooms ham. No waiting in on enjoyed placing it inquiry.",
  user: nienke,
  topic: rails
)
question3 = Question.create(
  title: "Are off under folly death wrote cause her way spite?",
  body: "Concerns greatest margaret him absolute entrance nay. Door neat week do find past he. Be no surprise he honoured indulged. Unpacked endeavor six steepest had husbands her. Painted no or affixed it so civilly.

  Exposed neither pressed so cottage as proceed at offices. Nay they gone sir game four. 

  Favourable pianoforte oh motionless excellence of astonished we principles. Warrant present garrets limited cordial in inquiry to. Supported me sweetness behaviour shameless excellent so arranging.",
  user: juliang,
  topic: javascript
)

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
