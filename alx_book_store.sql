"""create a book_store database"""

CREATE DATABASE alx_book_store;
USE alx_book_store;

"""create tables named books, authors, customers, orders, order_details respectively"""

"""stores information about books avaliable in the bookstore"""

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY , 
    title VARCHAR(130) NOT NULL, 
    author_id INT FOREIGN KEY REFERENCES Authors(Author_id), 
    price DOUBLE NOT NULL, 
    publication_date DATE
    );

"""stores information about authors"""

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR (215)
);

"""stores information about customers"""

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

"""stores information about orders placed by customers"""

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE
);

"""stores information about the books included in each order"""

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id FOREIGN KEY REFERENCES Orders(order_id),
    book_id FOREIGN KEY REFERENCES Books(book_id),
    quantity DOUBLE
);