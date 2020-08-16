# README

I want to create a simple rails app that will allow users to:
1. Search for images to add to their page - sers can have a profile picture (active storage)
2. Follow eachother
3. Add pictures from other pages to their own. 

First create users and 
Devise gem
Cancancan
Users can follow eachother.
Users can add photos to their page
Users can search for photos
Users can sign in using google, twitter, or github. 
https://source.unsplash.com/1600x900/?nature,water
Inspirational quote with photo?


#rails g resource User name:string
#rails g resource Follow follower_id:integer followee_id:integer


# photo-app
Steps taken to build: 
1. rails new photo_app --database=postgresql
2. cd photo_app 
3. rails g resource User name:string
4. rails g resource Follow follower_id:integer followee_id:integer
5. rake db:drop db:create db:migrate

rails d resource User name:string
rails d resource Follow


1. gem 'devise'
2. rails generate devise:install
3. rails generate devise User 
4. rails g devise:views

Admin
1. rails generate devise Admin  
2. update migration
3. rails generate migration add_admin_to_users admin:boolean
4. 


I want to create a simple rails app that will allow users to:
1. Search for images to add to their page
2. Follow eachother
3. Add pictures from other pages to their own. 
https://github.com/unsplash/unsplash_rb -- gem install unsplash

First create users and 

Users can follow eachother.
Users can add photos to their page
Users can search for photos
Users can 
https://source.unsplash.com/1600x900/?nature,water


#rails g resource User name:string
#rails g resource Follow follower_id:integer followee_id:integer





SQL Setup Resource: https://medium.com/@ethanryan/creating-a-new-rails-api-with-a-postgresql-database-488ffce649d9

Photo API SEARCH : https://source.unsplash.com/

Setting up user &folloers: https://medium.com/@camfeg/self-referencing-tables-and-making-friends-with-ruby-on-rails-3d8e59a21330# photo-app
