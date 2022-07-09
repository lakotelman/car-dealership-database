--Create Customer

CREATE OR REPLACE FUNCTION addCustomer
    (
        _first_name varchar(45),
        _last_name varchar(45)
    )
RETURNS varchar(45)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO customer (
        first_name,
        last_name
    ) VALUES (
        _first_name,
        _last_name
    );
    
    RETURN _first_name;
END;
$$

--Create Vehicle
CREATE OR REPLACE FUNCTION addVehicle
    (
        _vin INTEGER, 
		_make VARCHAR(250),
		_model VARCHAR(250),
		_from_dealership BOOL, 
		_customer_id INTEGER
    )
RETURNS varchar(45)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO vehicle (
        vin, 
		make,
		model,
		from_dealership, 
		customer_id
    ) VALUES (
        _vin, 
		_make,
		_model,
		_from_dealership, 
		_customer_id
    );
    
    RETURN _model;
END;
$$


--Create Salesperson (Maddy)
CREATE OR REPLACE FUNCTION addSalesperson
    (
        _first_name varchar(45),
        _last_name varchar(45)
    )
RETURNS varchar(45)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO salesperson (
        first_name,
        last_name
    ) VALUES (
        _first_name,
        _last_name
    );
    RETURN _first_name;
END;
$$

--Create Mechanic (Maddy)
CREATE OR REPLACE FUNCTION addMechanic
    (
        _first_name varchar(45),
        _last_name varchar(45)
    )
RETURNS varchar(45)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO mechanic (
        first_name,
        last_name
    ) VALUES (
        _first_name,
        _last_name
    );
    RETURN _first_name;
END;
$$

--Service Team (Patrick)
CREATE OR REPLACE FUNCTION addServiceteam (
        _mechanic_id INTEGER,
        _service_ticket_id INTEGER,
        _job_id INTEGER
    )
RETURNS INTEGER
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service_team (
        mechanic_id,
        service_ticket_id,
        job_id
    ) VALUES (
        _mechanic_id,
        _service_ticket_id,
        _job_id
    );
    
    RETURN _service_ticket_id;
END;
$$


--Sales_Invoice (Patrick)
CREATE OR REPLACE FUNCTION addSalesinvoice (
        _customer_id INTEGER,
        _vehicle_id INTEGER,
        _salesperson_id INTEGER
    )
RETURNS INTEGER
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO sales_invoice (
        customer_id,
        vehicle_id,
        salesperson_id
    ) VALUES (
        _customer_id,
        _vehicle_id,
        _salesperson_id
    );
    
    RETURN _customer_id;
END;
$$


-- Job
CREATE OR REPLACE FUNCTION addjob
    (
		_job_type VARCHAR(250)
    )
RETURNS varchar(45)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO job (
        job_type
    ) VALUES (
        _job_type
    );
    RETURN _job_type;
END;
$$

--Service Ticket 
CREATE OR REPLACE FUNCTION addServiceTicket
    (
        _service_ticket_id INTEGER, 
		_customer_id INTEGER, 
		_vehicle_id INTEGER, 
		_job_id INTEGER
    )
RETURNS INTEGER
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service_ticket (
        service_ticket_id, 
		customer_id, 
		vehicle_id, 
		job_id
    ) VALUES (
        _service_ticket_id, 
		_customer_id, 
		_vehicle_id, 
		_job_id
    );
    
    RETURN _service_ticket_id;
END;
$$


