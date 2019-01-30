# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

    ruby 2.3.3

* System dependencies

* Configuration
    * to run locally
    sudo ARCHFLAGS="-arch x86_64" bundle install
    
    create database timesheets
    
    bundle exec rake db:migrate
    
    bundle exec rake db:seed -> to feed some test data into database
    
    rails s -> to start server
    
    * to use api
    
    Base url : http://localhost:3000/api/v1
    
    get : /projects, Method = GET
    
    create: /projects Method = POST
     body : {
                "title" : "string",
                "description": "string",
                "owner": "string",
                "status": "string",
                "tech_stack": "string",
                "github_link": "string"
           } 
    get project details: /projects/{:id}, Method = GET
    
    update project details: /projects/{:id} , Method = PUT
    body : {
                    "title" : "string",
                    "description": "string",
                    "owner": "string",
                    "status": "string",
                    "tech_stack": "string",
                    "github_link": "string"
               } 
    
    delete project details : /projects/{:id} , Method = DELETE
    
* Database creation
     development : timesheets

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
