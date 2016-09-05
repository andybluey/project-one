## Hack Overflow
This is Project One of GA. I tried to recreate a similar model to stack overflow (a multi-user blog). This is part of my Web Development Immersive 16 with General Assembly.

## Background
- Have at least 3 models (more if they make sense) – one representing someone using your application,   and one that represents the main functional idea for your app
- Include sign up/log in functionality, with encrypted passwords & an authorization flow
- Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE
  Utilize an ORM to create a database table structure and interact with your relationally-stored data
- Four models were created: Users, Questions, Comments and Tags.

## How to view app
- Access it here: https://vast-earth-32647.herokuapp.com/login
- Clone / fork my repo: https://github.com/andybluey/project-zero

## Technology Used
- Ruby on Rails
- Ruby
- HTML5
- CSS3
- Application mailer

## Libraries / Plugins
- Skeleton CSS

## Gems
- 'will_paginate', '~> 3.0.5'
- 'acts_as_votable', '~> 0.10.0'
- 'cloudinary'
- 'bcrypt', '~> 3.1.7'


## Future Inclusions
- Add result limits to the loops given the fact a blog would grow over time.
- Control the deletion of existing users. The delete user functionality was initially added, but deleting a user also lost the content.
- Enhance the data and statistics already included in the app. 
