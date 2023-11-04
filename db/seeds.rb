# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Task.destroy_all

# sample tasks


Task.create(
    title: "Study for Exam",
    description: "Prepare for the upcoming biology exam.",
    subtask: "Review notes, practice questions",
    due_date: Time.now + 5.days,
    priority: "High",
    status: "To-Do",
    tags: "Education, Exam",
    completed: false,
    user_id: 1
  )
  
  Task.create(
    title: "Plan Vacation",
    description: "Plan a family vacation for the summer.",
    subtask: "Choose a destination, book flights, accommodation",
    due_date: Time.now + 90.days,
    priority: "Medium",
    status: "To-Do",
    tags: "Vacation, Travel",
    completed: false,
    user_id: 4
  )
  
  Task.create(
    title: "Exercise Routine",
    description: "Establish a daily exercise routine.",
    subtask: "Go for a run, do strength training",
    due_date: nil,  # No specific due date
    priority: "Low",
    status: "In Progress",
    tags: "Health, Fitness",
    completed: false,
    user_id: 3
  )

Task.create(
    title: "Important Meeting",
    description: "Prepare for the important meeting with the client.",
    subtask: "Create presentation, gather documents",
    due_date: Time.now + 3.days,
    priority: "High",
    status: "In Progress",
    tags: "Meeting, Client",
    completed: false,
    user_id: 1
  )
  
  Task.create(
    title: "Grocery Shopping",
    description: "Buy groceries for the week.",
    subtask: "Milk, eggs, vegetables, fruits, etc.",
    due_date: Time.now + 2.days,
    priority: "Medium",
    status: "To-Do",
    tags: "Groceries, Shopping",
    completed: false,
    user_id: 2
  )
  
  Task.create(
    title: "Home Renovation",
    description: "Plan the home renovation project.",
    subtask: "Contact contractors, create budget",
    due_date: Time.now + 30.days,
    priority: "High",
    status: "To-Do",
    tags: "Home, Renovation",
    completed: false,
    user_id: 5
  )
  Task.create(
    title: "Task 1",
    description: "Description for Task 1",
    subtask: "Subtask 1",
    due_date: Time.now + 7.days,
    priority: "High",
    status: "In Progress",
    tags: "Tag1, Tag2",
    completed: false,
    user_id: 3
  )

  # User.destroy_all

# sample users
User.create(
  name: "John Doe",
  email: "john@example.com",
  password_digest: BCrypt::Password.create("password123")
)

User.create(
  name: "Jane Smith",
  email: "jane@example.com",
  password_digest: BCrypt::Password.create("securepass")
)
User.create(
    name: "Alice Johnson",
    email: "alice@example.com",
    password_digest: BCrypt::Password.create("password456")
  )
  
  User.create(
    name: "Bob Anderson",
    email: "bob@example.com",
    password_digest: BCrypt::Password.create("s3cur3p@ss")
  )
  
  User.create(
    name: "Ella Davis",
    email: "ella@example.com",
    password_digest: BCrypt::Password.create("myPassw0rd")
  )