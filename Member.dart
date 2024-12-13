// Member.dart

import 'Book.dart';

// Class representing a library member
class Member {
  // Attributes: member's name, membership number, and a list of borrowed books
  String? name;
  String? membershipNumber;
  List<Book> books = [];

  // Constructor to initialize the member's name and membership number
  // If name or membership number is empty, they are set to "Undefined"
  Member(String name, String membershipNumber) {
    this.name = name == '' ? 'Undefined' : name;
    this.membershipNumber =
        membershipNumber == '' ? 'Undefined' : membershipNumber;
  }

  // Method to borrow a book by adding it to the member's borrowed list
  void borrowBook(Book book) {
    books.add(book);
  }

  // Method to return a book by removing it from the member's borrowed list
  // If the list is empty, a message is printed
  void returnBook(Book book) {
    books.isEmpty ? print('Empty List') : books.remove(book);
  }

  // Method to print the member's details and the titles of all borrowed books
  void printMemberInfo() {
    print(
        'Member Name is: ${this.name}\nMember Membership Number is: ${this.membershipNumber}');
    print('Borrowed Books:');
    books.forEach((book) {
      print(book.title);
    });
  }
}