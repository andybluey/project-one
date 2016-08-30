# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
u1 = User.create :name => "Craig", :email => "craigsy@ga.co", :image => "http://img2.timeinc.net/people/i/2008/database/danielcraig/daniel_craig300a.jpg", :password => "chicken", :password_confirmation => "chicken", :admin => false
u2 = User.create :name => "Jonesy", :email => "jonesy@ga.co", :image => "https://pbs.twimg.com/profile_images/195966468/jonesy_logo_black_background.jpg", :password => "chicken", :password_confirmation => "chicken", :admin => false
u3 = User.create :name => "Badger", :email => "badger@ga.co", :image => "http://animalia-life.com/data_images/badger/badger9.jpg", :password => "chicken", :password_confirmation => "chicken", :admin => false
u4 = User.create :name => "Admin", :email => "andrewjaknight@gmail.com", :image => "https://lh3.ggpht.com/MrrIHmYJmLKw1cuZV5qARUBGME0FfCuooseICmkA-WqCFuPm92spGQfILIisy_bzXsI=w170", :password => "chicken", :password_confirmation => "chicken", :admin => true

p "User count: #{User.all.count}"
p u1

Question.destroy_all
q1 = Question.create :title => "What do you think is the best code and why?", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
q2 = Question.create :title => "What is the worst code in the world?", :body => "What is the worst code to learn?"
q3 = Question.create :title => "What is the Best company to work for?", :body => "What is the best company to work at? Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
q4 = Question.create :title => "Worst Experience?", :body => "What is the worst experience you've had when coding?"
q5 = Question.create :title => "Favourite Site?", :body => "What is your favourite website and why?"
q6 = Question.create :title => "Best tech city?", :body => "What is the best tech cities in the world?"
q7 = Question.create :title => "What are the best debuggers?", :body => "What's your favourite way to debug?"
q8 = Question.create :title => "What are good meetups?", :body => "What are the good ones, where and are they encouraging?"
q9 = Question.create :title => "What are the best Hackathons?", :body => "What are some of the best hosts for hackathons?"

u1.questions << q1
u2.questions << q2
u3.questions << q3
u3.questions << q4
u3.questions << q5
u1.questions << q6

p "User one question count: #{u1.questions.count}"
p "User two question count: #{u2.questions.count}"
p "User three question count: #{u3.questions.count}"

p "Question one, user name: #{q1.user.name}"
p "Question two, user name: #{q2.user.name}"
p "Question three, user name: #{q3.user.name}"

Comment.destroy_all
c1 = Comment.create({:body => "Ruby is the best code to learn", :user_id => u1.id, :question_id => q1.id})
c2 = Comment.create({:body => "c+ is the worst. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u2.id, :question_id => q2.id})
c3 = Comment.create({:body => "Not the government!", :user_id => u3.id, :question_id => q3.id})
c4 = Comment.create({:body => "Maybe not the government! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u2.id, :question_id => q3.id})
c5 = Comment.create({:body => "This blog is awesome to work for. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u1.id, :question_id => q3.id})
c6 = Comment.create({:body => "Ruby on rails is my favourite. I think it is the best code to learn", :user_id => u2.id, :question_id => q1.id})
c7 = Comment.create({:body => "I like Air BNB ", :user_id => u2.id, :question_id => q5.id})
c8 = Comment.create({:body => "CSS is my axis of evil", :user_id => u2.id, :question_id => q6.id})
c9 = Comment.create({:body => "I agree, C++ sucks", :user_id => u3.id, :question_id => q2.id})
c10 = Comment.create({:body => "I love facebook because it uses react", :user_id => u1.id, :question_id => q5.id})
c11 = Comment.create({:body => "YES!!!!", :user_id => u2.id, :question_id => q5.id})
c12 = Comment.create({:body => "YES!!!!", :user_id => u3.id, :question_id => q5.id})

#
# p "User one comment count: #{q1.comments.count}"
# p "User two comment count: #{q2.comments.count}"
# p "User three comment count: #{q3.comments.count}"
#
# p "Comment one, question: #{c1.question.title}"
# p "Comment two, question: #{c2.question.title}"
# p "Comment three, question: #{c3.question.title}"
