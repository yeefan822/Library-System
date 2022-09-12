# Library-System
This is a simple library system for university student in B and Z formal specification.

To run this, you need to first make sure you have proB installed. Then you can open the files with proB and verify the design.



Functional requirements
I gained inspiration from the Libraries and Learning Services of the University of Auckland. To function as an online library, 
the sysytem is required to help the user borrow and return books. The objects thatneed to be implemented are students,authors and books. 
The object book would have book name, author, categories, and status. The books are either in stock or borrowed, and for B
implementation I have added another state which is reserved. I have set six categories, which are fiction, horror, commics, fantasy, 
novel, and general for the books. The books are initially set to general category when they are created. The other type of object, 
student, has attributes name and grade. The students can upgrade their grade to VIP to have more feature of the system, for example,
they can reserve a book so that normal students cannot borrow it. The library system should be able to add or remove books from the system.
We do not want people outside of our university to borrow the books from our library, so that our system need to help register students and 
delete students. After the students have registered, they can borrow the books with the status in-stock. They can return the borrowed
books back to the library anytime. The authors can register themselves as authors and then publish their books to the library. The reason 
to have author as an object because this library system is specifically for universities, therefore professors and students may want to publish
their own papers and books. Therefore the requirements for my library system are:
● The system can add books or remove books
● The system can sign up students or delete students
● Book object has name, author, status, category.
● Student object has name and grade.
● The system can upgrade the students from normal to VIP.
● Students can borrow books from the library system.
● Only VIP students can borrow books categorized as horror.
● Only VIP students can reserve a book so that normal student cannot borrow.
● Students with borrowed books can return the books to the library system.
● The system can update the categories of books.



B design model
According to the requirements above, I have created six SETS of the B implementation, which are BOOK, STUDENT, STATUS, CATEGORIES, AUTHOR, and GRADE. 
The corresponding variables would be books, students, b_status, b_category, categories, authors and s_grade. Additionally, for variables, I have borrow
and publish to store the relations of students borrowing books and authors publishing books. For invariant, books and students are power set of BOOK and 
STUDENT. Borrow is a bidirectional relation between student and book, because we want to keep tracking of the relationship between students and books so
that we can manage the returning process. The dom of borrow are students and the ran for borrow are books. B_status, b_category, and s_grade are single 
direactional relationship because status, category and grade are attributes of students or books. Publish is also a bidirectional relationship which has authors
as dom and books as ran. The books, students, authors, borrow, and publish are all initialized as empty sets. The book are initially instock with general category
when they are created. The initial grade fro student is normal and the categories includes fiction, horror, commics, fantasy, novel, and general.
I have written eleven operations to cover all necessary functionalities that the library system:
● addbook(bk) : Take a book instance as input and add it to the books set after
determining the book instance is not in the books set.
● removebook(bk): Take a book instance as input, remove it from the books set after
checking that the book is in the set and the book is instock.
● registerauthor(ah): Take an author instance as input and add it to the authors set
after determining the author instance is not exist in the authors set.
● publishbook(ah,bk): Take an author and a book instance as input ,then add the book
into the books set and add the relationship of author and book into the publish set,
after checking the author is in authors set and book is not in books set, and book is
type BOOK.
● signupstudent(sd): Take a student typed instance as input, then add the instance to
the students set if it is not already exist in the set.
● upgradestudent(sd): Upgrade the grade of an existing student instance from normal
to VIP if the student is in students set and the current grade is normal.
● deletestudent(sd): Take a student instance as input, remove it from the students set
after checking that the student is currently not borrowing any books.
● borrowbook(sd,bk): Take a student instance and a book instance as input, after
checking :
○ The student instance is in the students set and the book instance is in the
books set.
○ The status of the book is instock, or the student is a VIP and the status of the
book is reserved.
○ The category of the book is not horror, or the student is a VIP
Then add the student and book relation to the borrow set, and change the status of
the book instance to borrowed.
● returnbook(sd,bk): If the input sd and bk are instance of student and book, and they
are in corresponding students and books sets, as well as they are in the borrow
relationship sets. Then remove the relation from the borrow sets, change the status
of the book instance from borrowed to instock.
● updatebookcategory(bk,ca): Take a book instance and a category instance that are
existing in books set and categories set. If the book’s status is instock, and the
current category is not equal to the input category, then set the b_category of the
book instance to that input ca category.
● reservebook(sd,bk): If the input sd is in the students set and the grade of sd is VIP,
and the status of bk is instock, then change the status of bk to reserved
