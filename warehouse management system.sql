CREATE DATABASE WarehouseManagement;

USE WarehouseManagement;


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    category VARCHAR(255),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    s_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    contact_person VARCHAR(255)
);


CREATE TABLE Warehouse (
    warehouse_id INT PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    capacity INT,
    email VARCHAR(255)
);


CREATE TABLE Shipment (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    shipment_date DATE,
    warehouse_id INT,
    status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id)
);

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    delivery_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address TEXT,
    phone_num VARCHAR(15)
);



