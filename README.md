# README

Creating the sample Blog app used as a learning exercise in the  Ruby on Rails, [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html) guide for v7.0.4

**Note:** PostgreSQL has been used as the database for this app instead of the default database (SQLite). To clone this repo and use this code, you will need to install [PostgreSQL](https://www.postgresql.org/download/) and configure it on your machine. I am using [OS X](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos).

Guide Sections Completed:

- [x] 1. [Guide Assumptions](https://guides.rubyonrails.org/getting_started.html#guide-assumptions)
- [x] 2. [What is Rails](https://guides.rubyonrails.org/getting_started.html#what-is-rails-questionmark)
- [x] 3. [Creating a New Rails Project](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project)
- [x] 4. [Hello, Rails!](https://guides.rubyonrails.org/getting_started.html#hello-rails-bang)
- [x] 5. [Autoloading](https://guides.rubyonrails.org/getting_started.html#autoloading)
- [x] 6. [MVC and You](https://guides.rubyonrails.org/getting_started.html#mvc-and-you)
- [x] 7. [CRUDit Where CRUDit Is Due](https://guides.rubyonrails.org/getting_started.html#crudit-where-crudit-is-due)
- [x] 8. [Adding a Second Model](https://guides.rubyonrails.org/getting_started.html#adding-a-second-model)


##Useful Rails Commands:
```
# create new rails app
rails new appname

# start rails
rails server

# show routes
rails routes

# add a new controller
rails generate controller ControllerName optional_pages/actions
# ex: rails generate controller Articles index

# add a new model
rails generate model ModelName <list properties and their datatypes, references to other models>
# example: rails generate model Comment commenter:string body:text article:references

# run data migrations
rails db:migrate

# start interactive console session
rails console
```

##Useful Links

[Active Record Basics](https://guides.rubyonrails.org/active_record_basics.html): covers Active Record essentials


