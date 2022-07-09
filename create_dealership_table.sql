CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS vehicle (
    vehicle_id SERIAL PRIMARY KEY,
    vin INTEGER,
    make VARCHAR (255),
    model VARCHAR (255),
    from_dealership BOOLEAN,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE IF NOT EXISTS salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR (255),
    last_name VARCHAR (255)
);

CREATE TABLE IF NOT EXISTS sales_invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    vehicle_id INTEGER,
    salesperson_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);


CREATE TABLE IF NOT EXISTS mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR (255),
    last_name VARCHAR (255)
);

CREATE TABLE IF NOT EXISTS job (
    job_id SERIAL PRIMARY KEY,
    job_type VARCHAR (255)
);

CREATE TABLE IF NOT EXISTS service_ticket (
    service_ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    vehicle_id INTEGER,
    job_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
    FOREIGN KEY (job_id) REFERENCES job(job_id)
);

CREATE TABLE IF NOT EXISTS service_team (
    service_team_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    service_ticket_id INTEGER,
    job_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id),
    FOREIGN KEY (job_id) REFERENCES job(job_id)
);