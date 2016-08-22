Question.delete_all
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



matthijs = User.create( email: 'matthijs@test.com', password: 'abcd1234', role: 'student' )
ruben = User.create( email: 'ruben@test.com', password: 'abcd1234', role: 'student' )
nienke = User.create( email: 'nienke@test.com', password: 'abcd1234', role: 'student' )
juliang = User.create( email: 'juliang@test.com', password: 'abcd1234', role: 'student' )
julianh = User.create( email: 'julianh@test.com', password: 'abcd1234', role: 'student' )
miriam = User.create( email: 'miriam@test.com', password: 'abcd1234', role: 'teacher' )
admin = User.create( email: 'admin@test.com', password: 'abcd1234', role: 'admin' )


Question.create([

  {
    title:"How to implement Devise into your ruby app?",
    body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs,
    topic: ruby
  },
  {
    title:"How to implement Devise into your rails app?",
    body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs,
    topic: rails
  },
  {
    title:"How to implement Ajax into your rails app?",
    body: "Google. Google and more google and more google  and more google and more google and more google and more google and more google and more google and more google and more google and more google and more google",
    user: matthijs,
    topic: javascript
  }

])
