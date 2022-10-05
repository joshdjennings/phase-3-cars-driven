# Phase 3 Project

## Simple Cars Database App

- Assignment: Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

For my Phase 3 Project I have:
1) built a **Sinatra API** backend that 
2) uses **Active Record** to access and persist data in a database.
3) That database is used by a separate **React frontend** that interacts with the database via the API.

## Requirements
To meet my requirements I had to:
- Use Active Record to interact with a database.
You can see that my models (Car class and Driver class inherit from ActiveRecord)

- Have at least two models with a one-to-many relationship.
car.rb (cars belong to:drivers) & driver.rb (driver has many cars)
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  Check out my controllers
  - full CRUD capability for one of the models
  cars_controller.rb
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
  cars-driven-app folder within the project

##What can this app do?
For cars, you can
- **Create** a new car with many specs with a New Car Form
- **Read** all of the cards that have car info on them
- **Update** a car by marking it as "SOLD"
- **Delete** a car card from the db

For drivers, you can 
- **Create** a new driver with name age and favorite quote with the New Driver Form
- **Read** all of the cards that have a driver's info
- **Delete** a driver card from the db

##Let me see it in action!
If you want to see my app up and running, 
You can start the backend server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

You can start the frontend server (in another terminal window) with:

```console
$ npm start
```

This will run your server on port
[http://localhost:3000](http://localhost:3000).

- This project was intended to focus more on the backend than the frontend, so I didnt' do any styling or any client side routing.
I do want to mention that I used the faker gem to help seed my db to start.
