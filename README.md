# Sporting Activities Searching

### Functionality
This is a simple application for searching and registering into sporting activities. To enter the application, the user
has to login with user and password, so he must be registered before in the database. Anyhow, new users can be registered
using a simple form and specifying their login, password, name, surname, phone and address.

Once a user is authenticated, he can do the following things:
- List all the available activities
- List all the available pavillions
- See the activities with free places
- Search activities cheaper than certain specified cost
- Register into an activity
- And unregister from an activity

### Technologies
- J2EE
- Java
- Servlet
- JSP
- HTML5
- Javascript
- CSS
- SQL

### Software architecture pattern
The application has been developed using the Model View Control pattern.

### Data model using MYSQL
The data model of the application is composed of the following tables:
- ACTIVITIES: 
     · ID
     · NAME
     · Description
     · Initial
     · START_DATE
     · COST
     · PAVILLION_NAME
     · TOTAL_PLACES
     · OCUPIED_PLACES
- PAVILLIONS: available pavillions and their corresponding locations
     · PAVILLION
     · LOCATION
- CLIENTS: to store the application users
     · LOGIN
     · PASSWORD
     · NAME
     · SURNAME
     · PHONE
     · ADDRESS
- REGISTRATIONS: this table is used when the users want to register into an activity.
     · CLIENT_LOGIN
     · ACTIVITY_ID
     
    
