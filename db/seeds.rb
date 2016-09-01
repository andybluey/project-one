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
u5 = User.create :name => "Searcher", :email => "ssslfkj@mmail.com", :image => "https://lh3.ggpht.com/MrrIHmYJmLKw1cuZV5qARUBGME0FfCuooseICmkA-WqCFuPm92spGQfILIisy_bzXsI=w170", :password => "chicken", :password_confirmation => "chicken", :admin => false
u6 = User.create :name => "Hackman", :email => "abc@hmail.com", :password => "chicken", :password_confirmation => "chicken", :admin => false
u7 = User.create :name => "Codingman", :email => "bac@hmail.com", :password => "chicken", :password_confirmation => "chicken", :admin => false


p "User count: #{User.all.count}"
p u1

Tag.destroy_all
t1 = Tag.create :name => "Coding"
t2 = Tag.create :name => "Ruby"
t3 = Tag.create :name => "Javascript"
t4 = Tag.create :name => "Ruby on Rails"
t5 = Tag.create :name => "C++"
t6 = Tag.create :name => "Java"
t7 = Tag.create :name => "React"
t8 = Tag.create :name => "Python"
t9 = Tag.create :name => "SQL"
t10 = Tag.create :name => "Other"
p "Tag count: #{Tag.all.count}"

Question.destroy_all
q1 = Question.create({ :title => "What do you think is the best code and why?", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q2 = Question.create({:title => "What is the worst code in the world?", :body => "What is the worst code to learn?", :tag_ids => t1.id})
q3 = Question.create({:title => "What is the Best company to work for?", :body => "What is the best company to work at? Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q4 = Question.create({:title => "Worst Experience?", :body => "What is the worst experience you've had when coding?", :tag_ids => t1.id})
q5 = Question.create({:title => "Favourite Site?", :body => "What is your favourite website and why?", :tag_ids => t1.id})
q6 = Question.create({:title => "Best tech city?", :body => "What is the best tech cities in the world?", :tag_ids => t1.id})
q7 = Question.create({:title => "What are the best debuggers?", :body => "What's your favourite way to debug?", :tag_ids => t1.id})
q8 = Question.create({:title => "What are good meetups?", :body => "What are the good ones, where and are they encouraging?", :tag_ids => t1.id})
q9 = Question.create({:title => "What are the best Hackathons?", :body => "What are some of the best hosts for hackathons?", :tag_ids => t1.id})
q10 = Question.create({:title => "Help with Rails", :body => "I can't get rails to create new function", :tag_ids => t1.id})
q11 = Question.create({:title => "Help with C++", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q12 = Question.create({:title => "Help with Ruby", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q13 = Question.create({:title => "Help with SQL", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q14 = Question.create({:title => "Help with Javascript", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q15 = Question.create({:title => "Help with Badger", :body => "How do I make a badgerin?", :tag_ids => t1.id})
q16 = Question.create({:title => "Help with Javascript", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :tag_ids => t1.id})
q17 = Question.create({:title => "Help with Ruby", :body => "How do I do a loop in Ruby?", :tag_ids => t1.id})

u1.questions << q1
u2.questions << q2
u3.questions << q3
u3.questions << q4
u3.questions << q5
u5.questions << q6
u4.questions << q7
u6.questions << q8
u3.questions << q9
u1.questions << q10
u3.questions << q11

t1.questions << q1 << q2 << q3 << q7 << q8
t2.questions << q1 << q2 << q3 << q11 << q14
t3.questions << q1 << q5 << q3 << q17 << q13
t4.questions << q8 << q2 << q3 << q16 << q13
t5.questions << q1 << q6 << q3 << q7 << q12
t6.questions << q11 << q2 << q3 << q9 << q5
t7.questions << q1 << q2 << q3
t8.questions << q9 << q8 << q7
t9.questions << q4 << q5 << q6
t10.questions << q10 << q2 << q4


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
c12 = Comment.create({:body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u3.id, :question_id => q15.id})
c13 = Comment.create({:body => "I'm not sure. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :user_id => u5.id, :question_id => q16.id})
c14 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u6.id, :question_id => q16.id})
c15 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u7.id, :question_id => q17.id})
c17 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u7.id, :question_id => q5.id})
c18 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u7.id, :question_id => q12.id})
c19 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u7.id, :question_id => q16.id})
c20 = Comment.create({:body => "I'd probably stick to other things! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :user_id => u7.id, :question_id => q15.id})
