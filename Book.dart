// Book.dart

// Class representing a book in the library
class Book {
  // Attributes to store the book's title and author
  String? title;
  String? author;

  // Constructor to initialize the book with title and author
  // If title or author is empty, they are set to "Undefined"
  Book(String title, String author) {
    this.title = (title == '') ? 'Undefined' : title;
    this.author = (author == '') ? 'Undefined' : author;
  }
}