import mysql.connector
from mysql.connector import Error

def create_database():
    cursor = None  # Initialize cursor variable
    connection = None  # Initialize connection variable
    
    try:
        # Establishing the connection
        connection = mysql.connector.connect(
            host='localhost',  # Replace with your host
            user='your_username',  # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create database query
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error: {e}")
    except mysql.connector.Error as db_err:
        print(f"Database error: {db_err}")
    except mysql.connector.OperationalError as op_err:
        print(f"Operational error: {op_err}")
    except mysql.connector.ProgrammingError as prog_err:
        print(f"Programming error: {prog_err}")
    
    finally:
        # Closing the cursor and connection
        if cursor is not None:
            cursor.close()
        if connection is not None and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()
