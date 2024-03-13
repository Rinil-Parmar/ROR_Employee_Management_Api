
# Employee Management API

This is simple Api which has two models employees and its departments. 

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/employee-management-api.git
   ```

2. Navigate to the project directory:
   ```bash
   cd ROR_Employee_Management_Api
   ```

3. Install dependencies:
   ```bash
   bundle install
   ```

4. Create a `.env` file in the root directory and add the following configuration:

## Environment Variables
- `DATABASE_NAME`: Name of the database.
- `DATABASE_USERNAME`: Database username.
- `DATABASE_PASSWORD`: Database password.
- `DATABASE_HOST`: Database host.
- `DATABASE_PORT`: Database port.

## Database Configuration

This project uses a database for storing employee data. It is running on Postgresql locally.You can configure the .env as above.

## Basic CRUD Operations

### Create an Employee

```bash
curl -X POST http://localhost:3000/employees \
-H "Content-Type: application/json" \
-d '{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "department": "Engineering",
  "position": "Software Engineer"
}'
```

### Read All Employees

```bash
curl http://localhost:3000/employees
```

### Read a Single Employee

```bash
curl http://localhost:3000/employees/<employee_id>
```
Replace `<employee_id>` with the ID of the employee you want to retrieve.

### Update an Employee

```bash
curl -X PUT http://localhost:3000/employees/<employee_id> \
-H "Content-Type: application/json" \
-d '{
  "name": "Updated Name",
  "email": "updated.email@example.com",
  "department": "Updated Department",
  "position": "Updated Position"
}'
```
Replace `<employee_id>` with the ID of the employee you want to update.

### Delete an Employee

```bash
curl -X DELETE http://localhost:3000/employees/<employee_id>
```
Replace `<employee_id>` with the ID of the employee you want to delete.

## Running the Server

Start the server using the following command:

```bash
rails s
```
