User.delete_all

matthijs = User.create( email: 'matthijs@test.com', password: 'abcd1234', role: 'student' )
ruben = User.create( email: 'ruben@test.com', password: 'abcd1234', role: 'student' )
nienke = User.create( email: 'nienke@test.com', password: 'abcd1234', role: 'student' )
juliang = User.create( email: 'juliang@test.com', password: 'abcd1234', role: 'student' )
julianh = User.create( email: 'julianh@test.com', password: 'abcd1234', role: 'student' )
miriam = User.create( email: 'miriam@test.com', password: 'abcd1234', role: 'teacher' )
admin = User.create( email: 'admin@test.com', password: 'abcd1234', role: 'admin' )
