# README

# Tasks API - Ruby on Rails

Welcome to the Tasks API, a Ruby on Rails-based API for managing tasks and to-do lists. This API follows the REST convention, includes robust authentication and authorization mechanisms, and provides detailed error responses. It's designed to be user-friendly and easily integratable into your applications.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation) 
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Authentication and Authorization](#authentication-and-authorization)
- [Error Handling and Validations](#error-responses)
- [Database](#database)
- [License](#license)

## Features

- Create, read, update, and delete tasks.
- Secure and efficient storage of tasks in a relational database.
- User authentication and authorization for secure access.
- Well-documented RESTful API endpoints.
- Detailed error responses for improved debugging.
- Customizable for various project requirements.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following prerequisites:

- Ruby (latest version)
- Rails (latest version)


### Installation

1. Clone this repository to your local machine:

```bash
git clone https://github.com/Essyuge/Tasks-API

1. Navigate to the project directory:
cd tasks-api

2. Install gem dependencies:
bundle install

3. Create and migrate the database:
rails db:create
rails db:migrate

4. Start the Rails server:
rails server 
```


## Usage

This API is designed to be easy to integrate into your projects. You can use it as a standalone API or integrate it into web and mobile applications. Below are some basic examples of how to interact with the API:

### Get a list of tasks

Retrieve a list of tasks with a GET request to /tasks.
```bash
GET http://localhost:3000/tasks
```
### Create a New Task

Send a POST request to `/tasks` with the task details in the request body.
```bash
'{
  "title": "",
  "description": "",
  "subtask": "",
   "due_date": "",
   "priority": "",
   "status": "",
   "tags": "",
   "completed": "Not Completed"
}' http://localhost:3000/tasks
```
### Update a task

Send a PUT request to /tasks/:id with the updated task details.
```bash
 PUT http://localhost:3000/tasks/1

```
### Delete a task

Send a DELETE request to /tasks/:id to delete a task.
```bash
DELETE http://localhost:3000/tasks/1
```


![POSTMAN Image](https://github.com/Essyuge/Tasks-API/blob/main/Screenshot%20(547).png)


![POSTMAN Image](https://github.com/Essyuge/Tasks-API/blob/main/Screenshot%20(548).png)
![POSTMAN Image](https://github.com/Essyuge/Tasks-API/blob/main/Screenshot%20(549).png)


## Authentication and Authorization

This section outlines the authentication and authorization mechanisms used in the Tasks API. We prioritize security and access control to ensure that only authenticated and authorized users can perform specific actions.

### Authentication

The API utilizes [BCrypt gem] to authenticate users. Here's how it works:

1. bcrypt take password makes it into a hash sort it and stores it.
2. sessions and cookies are implemented to Remember user across all URLs

### Authorization

To protect your resources, the API employs an authorization mechanism based on user roles or permissions. Users with different roles can access different parts of the API.


## Error Handling and Validation

I Implemented error handling to return appropriate status codes and error messages when things go wrong, like invalid API requests or unavailable services.


[Active Record Validations ](https://guides.rubyonrails.org/active_record_validations.html) This guide teaches you how to validate the state of objects before they go into the database using Active Record's validations feature.

## Database

The API relies on a  SQlite database to store task data. The database schema includes tables for tasks and users to ensure data integrity and security. 


