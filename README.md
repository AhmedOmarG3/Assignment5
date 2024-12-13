# Library Management System

A simple Library Management System implemented in Dart, designed to manage books and members in a library. This program highlights fundamental object-oriented programming (OOP) concepts, including class creation, attributes, methods, and object references.

---

## Overview

This system allows:
- Library members to borrow and return books.
- Managing a list of borrowed books for each member.
- Demonstrating how multiple members can reference the same book object.

The program is modular, with clearly defined classes for Book and Member, and a main file to test functionality.

---

## Key Features

### 1. Book Class
- Represents a book in the library with:
  - title: The name of the book.
  - author: The book's author.
- Ensures data integrity by setting undefined values for empty titles or authors.

### 2. Member Class
- Represents a library member with:
  - name: The member's full name.
  - membershipNumber: A unique identifier.
  - books: A list of books currently borrowed.
- Includes key methods:
  - borrowBook(Book book): Adds a book to the member's borrowed list.
  - returnBook(Book book): Removes a book from the borrowed list.
  - printMemberInfo(): Displays the member's details and borrowed books.

### 3. Object References
- Demonstrates shared references where multiple members can borrow the same book.

---

## Code Structure

The project is divided into the following files:

1. **Book.dart**: Contains the Book class definition.
2. **Member.dart**: Contains the Member class definition.
3. **main.dart**: The entry point for testing and demonstrating the library systeUsage## **UStep 1: Create Books and Membersnd Members**
Define books and members using their respective classes:
`dart
Book book1 = Book('Dart for Beginners', 'John Doe');
Member alice = Member('Alice', 'M001');

Step 2: Borrow and Return Books

Members can borrow or return books using the provided methods:

alice.borrowBook(book1); // Alice borrows the book
alice.returnBook(book1); // Alice returns the book

Step 3: Display Member Information

Print details of members and their borrowed books:

alice.printMemberInfo();


---

Example

import 'Book.dart';
import 'Member.dart';

void main() {
  // Create members
  Member alice = Member('Alice', 'M001');
  Member ahmed = Member('Ahmed', 'M002');

  // Create books
  Book book1 = Book('Dart for Beginners', 'John Doe');
  Book book2 = Book('Introduction to Dart', 'Jane Smith');

  // Borrow books
  alice.borrowBook(book1);
  ahmed.borrowBook(book1); // Shared book
  alice.borrowBook(book2);

  // Display information
  alice.printMemberInfo();
  ahmed.printMemberInfo();

  // Return a book
  alice.returnBook(book1);
  alice.printMemberInfo();
}


---

Key OOP Concepts Demonstrated

1. Encapsulation: Classes for Book and Member encapsulate relevant data and behavior.


2. Object References: Demonstrates how multiple objects can reference and interact with the same book.


3. Error Handling: Ensures no invalid operations on empty or undefined values.




---

How to Run

1. Save the files Book.dart, Member.dart, and main.dart in the same directory.


2. Run the program using the Dart SDK:

dart main.dart




---

Author

Developed by Ahmed Omar, showcasing foundational skills in Dart programming and object-oriented design.

For further improvements or feedback, feel free to contribute!
