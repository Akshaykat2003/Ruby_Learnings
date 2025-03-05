Question:
You are tasked with designing a database for a library system. The database should track books, members, and borrowing activities.
 * DDL (Data Definition Language):
   * Create the following tables:
     * Books with columns: book_id, title, author, publication_year, genre.
     * Members with columns: member_id, name, address, contact_number.
     * Borrowings with columns: borrowing_id, book_id, member_id, borrow_date, due_date, returned_date.


 * DML (Data Manipulation Language):
   * Insert sample data into each table (at least 5 records per table).

 * DQL (Data Query Language):
   * Write queries to:
     * Retrieve all books by a specific author.
     * Find members who have borrowed a particular book.
     * Display books that are currently overdue.
     * Calculate the total number of books borrowed by each member.

 * TCL (Transaction Control Language):
   * Demonstrate the use of COMMIT and ROLLBACK in a scenario where a member borrows a book, but the transaction needs to be canceled due to an error.
   
 * Joins:
   * Write a query to display the member's name, book title, and borrow date for all borrowing activities. Use an appropriate join to relate the Borrowings, Members, and Books tables.
Additional Considerations:
 * You can add constraints (e.g., primary keys, foreign keys) to ensure data integrity.
 * You can define indexes to improve query performance.
 * You can consider additional functionalities like fines for overdue books or reservations.
 