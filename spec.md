# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
      Used ActiveRecord::Migration class to create tables in my database.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
    Model classes: User, Car
- [x] Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)
  User model has_many :cars
- [x] Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)
  Car model belongs_to :user
- [x] Include user accounts
  '/' home page requires sign up or log in to user account
- [x] Ensure that users can't modify content created by other users
  Through conditional statements in '/cars/:id/edit' route and delete action route I ensure that only content can be modified when the current_user is the same as the car poster.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
  My car_controller class has routes for creating (/cars/new), reading (/cars and /cars/:id), updating (/cars/:id/edit) and deleting (/cars/:id/delete)
- [x] Include user input validations
  User model validates_presence_of :username, :email, :password
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
  created '/failure' page with error message when there is a validation failure
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
  README.md has required information

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
