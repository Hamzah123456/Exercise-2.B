# Requirements and Conceptual Model

Name:
Hamzah Alssoudi

## End User
The end user is Lana, the owner of the dog-walking business. She needs a simple database that helps her keep track of clients, their dogs, dog walkers, and scheduled walks.

## What the End User Needs to Do
- Store client contact information
- Keep track of each client's dogs
- Save important dog details, like breed, age, and special notes
- Schedule walks by date and time
- Assign a dog walker to each appointment
- Track the status of each walk, such as scheduled, completed, or canceled
- View which dogs belong to which clients
- View which walker handled each appointment

## Categories of Data to Track

### Clients
- Client ID
- First name
- Last name
- Phone number
- Email address
- Address

### Dogs
- Dog ID
- Client ID
- Dog name
- Breed
- Age
- Size
- Special instructions
- Medical or behavior notes

### Walkers
- Walker ID
- First name
- Last name
- Phone number
- Email address
- Availability

### Appointments
- Appointment ID
- Dog ID
- Walker ID
- Walk date
- Walk time
- Duration
- Status
- Notes

# Logical Model

## Main Entities
The main entities in this database are:
- Clients
- Dogs
- Walkers
- Appointments

## Attributes for Each Entity

### Clients
- client_id
- first_name
- last_name
- phone
- email
- address

### Dogs
- dog_id
- client_id
- dog_name
- breed
- age
- size
- special_instructions
- medical_notes

### Walkers
- walker_id
- first_name
- last_name
- phone
- email
- availability

### Appointments
- appointment_id
- dog_id
- walker_id
- walk_date
- walk_time
- duration
- status
- notes

## Relationships Between Entities
- One client can have many dogs.
- Each dog belongs to one client.
- One dog can have many appointments.
- One walker can have many appointments.
- Each appointment connects one dog and one walker.

## Many-to-Many Relationship
There is a many-to-many relationship between dogs and walkers over time because one dog can be walked by different walkers, and one walker can walk many dogs. This relationship is resolved through the Appointments table.

## Summary
The Clients table stores customer information. The Dogs table stores information about each dog and connects to Clients using client_id. The Walkers table stores information about the dog walkers. The Appointments table stores the scheduling information and connects Dogs and Walkers using dog_id and walker_id.
