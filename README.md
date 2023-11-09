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
- PostgreSQL or MySQL database

### Installation

1. Clone this repository to your local machine:

```bash
git clone https://github.com/Essyuge/Tasks-API

1. Navigate to the project directory:
cd tasks-api

2. Install gem dependencies:
bundle install

3. Configure the database connection in config/database.yml.

4. Create and migrate the database:
rails db:create
rails db:migrate

5. Start the Rails server:
rails server 
```


## Usage

This API is designed to be easy to integrate into your projects. You can use it as a standalone API or integrate it into web and mobile applications. Below are some basic examples of how to interact with the API:

### Get a list of tasks

Retrieve a list of tasks with a GET request to /tasks.
```bash
curl http://localhost:3000/tasks
```
### Create a New Task

Send a POST request to `/tasks` with the task details in the request body.
```bash
curl '{
  "title": "Complete project proposal",
  "description": "Create a detailed project proposal for the upcoming sprint.",
  "due_date": "2023-11-15"
}' http://localhost:3000/tasks
```
### Update a task

Send a PUT request to /tasks/:id with the updated task details.
```bash
curl  '{
  "title": "Complete project proposal (Updated)",
  "description": "Create a detailed project proposal for the upcoming sprint (Updated).",
  "due_date": "2023-11-20"
}' http://localhost:3000/tasks/1
```
### Delete a task

Send a DELETE request to /tasks/:id to delete a task.
```bash
curl DELETE http://localhost:3000/tasks/1
```

![POSTMAN Image](./app/image/Screenshot(547).png)


## Authentication and Authorization

This section outlines the authentication and authorization mechanisms used in the Tasks API. We prioritize security and access control to ensure that only authenticated and authorized users can perform specific actions.

### Authentication

The API utilizes [authentication method or gem/library] to authenticate users. Here's how it works:

1. [Explain the authentication process and setup]
2. [Provide details on obtaining authentication tokens or API keys]

### Authorization

To protect your resources, the API employs an authorization mechanism based on user roles or permissions. Users with different roles can access different parts of the API.

1. [Explain how authorization is implemented]
2. [Provide examples of user roles and permissions]
<!-- install the Bcrypt gem  -->

## Error Handling and Validation

I Implemented error handling to return appropriate status codes and error messages when things go wrong, like invalid API requests or unavailable services.


[Active Record Validations ](https://guides.rubyonrails.org/active_record_validations.html) This guide teaches you how to validate the state of objects before they go into the database using Active Record's validations feature.

## Database

The API relies on a  SQlite database to store task data. The database schema includes tables for tasks and users to ensure data integrity and security. 
<!-- This section provides details about the database structure.

1. [Explain the structure of the database]
2. [List the database tables and their relationships]  -->

## License

This project is licensed under the [1980/EU].

<!-- 1. [Specify your license type and terms] -->

