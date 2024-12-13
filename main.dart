// main.dart

import 'Book.dart';
import 'Member.dart';

void main() {
  // Creating new members
  Member alice = Member('Alice', 'M001');
  Member ahmed = Member('Ahmed', 'M002');

  // Printing Alice's information before borrowing any books
  alice.printMemberInfo();

  // Creating some books
  Book book1 = Book('Dart for Beginners1', 'John Doe');
  Book book2 = Book('', ''); // A book with no title and author

  // Alice borrows the first book
  alice.borrowBook(book1);
  // Ahmed borrows the same book (demonstrating shared references)
  ahmed.borrowBook(book1);

  // Alice borrows the second book
  alice.borrowBook(book2);

  // Printing Alice's information after borrowing books
  print('============== After Borrowing Books 1, 2 ===============');
  alice.printMemberInfo();

  // Alice returns the first book
  alice.returnBook(book1);
  print('============== After Returning Book 1 ==================');
  alice.printMemberInfo(); // Should show the remaining book(s)

  // Printing Ahmed's information to verify he still has the shared book
  print('============== Ahmed Info ==================');
  ahmed.printMemberInfo();
}