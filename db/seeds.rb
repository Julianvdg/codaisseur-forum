User.delete_all

matthijs = User.create( email: 'matthijs@test.com', password: 'abcd1234', role: 'student' )
ruben = User.create( email: 'ruben@test.com', password: 'abcd1234', role: 'student' )
nienke = User.create( email: 'nienke@test.com', password: 'abcd1234', role: 'student' )
juliang = User.create( email: 'juliang@test.com', password: 'abcd1234' role: 'student' )
julianh = User.create( email: 'julianh@test.com', password: 'abcd1234' role: 'student' )
miriam = User.create( email: 'miriam@test.com', password: 'abcd1234', role: 'teacher' )
admin = User.create( email: 'admin@test.com', password: 'abcd1234', role: 'admin' )


questions = Question.create([
  {
    name:"How to implement Devise into your ruby app?",
    description: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs
    topic: ruby
  },
  {
    name:"How to implement Devise into your rails app?",
    description: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs
    topic: rails
  },
  {
    name:"How to implement Ajax into your rails app?",
    description: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs
    topic: javascript
  }
])

topics = Topic.create([
  {name: "javascript"},
  {name: "ruby"},
  {name: "rails"},
  {name: "css"},
  {name: "html"},
  {name: "ajax"},
  {name: "jquery"},
  {name: "sinatra"}
  ])
