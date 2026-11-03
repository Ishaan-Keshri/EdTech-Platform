
# EdTech Platform

An online Education Technology platform developed using Java, JSP, Servlets, JDBC, and MySQL. It connects educators and learners through a centralized course management system.

## Features

### Admin Dashboard
- Add, update, delete, and search courses.
- Manage registered users.
- View user reports.

### User Dashboard
- User registration and login.
- View available courses.
- Search for courses.
- Enroll in courses.
- View and manage enrolled courses.
- View user profile.

## Technology Stack

- **Backend:** Java, Java Servlets
- **Frontend:** JSP, HTML, CSS, JavaScript
- **Database:** MySQL
- **Database Connectivity:** JDBC
- **Architecture:** MVC (Model-View-Controller)
- **Server:** Apache Tomcat
- **IDE:** Eclipse

## Project Structure

```text
EdTech_Platform_JSP/
├── src/
│   └── main/
│       ├── java/
│       │   └── master/
│       │       ├── dao/
│       │       ├── dto/
│       │       ├── servlet/
│       │       └── utilities/
│       └── webapp/
│           ├── WEB-INF/
│           └── *.jsp
├── .classpath
├── .project
├── .gitignore
└── README.md
```

## Setup Instructions

1. Clone this repository.
2. Import the project into Eclipse as an Existing Project.
3. Install JDK and Apache Tomcat.
4. Create the MySQL database and tables using `database.sql`.
5. Configure the database environment variables:
   - `DB_URL`
   - `DB_USERNAME`
   - `DB_PASSWORD`
6. Ensure MySQL Connector/J is available in the project.
7. Run the project on Apache Tomcat.

## Database Configuration

The application reads database credentials from environment variables. Configure them according to your local MySQL setup.

## Author

Ishaan Keshri
