import 'package:myapp/domain/model/book.dart';

List<Book> getBooks() {
  return [
    Book(
      id: "1",
      name: "The Passion",
      author: "Jeanette Winterson",
      imageUrl:'https://images.pexels.com/photos/256450/pexels-photo-256450.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    ),
    Book(
      id: "2",
      name: "100 años de soledad",
      author: "Gabriel García Márquez",
      imageUrl:'https://plus.unsplash.com/premium_photo-1683133333081-452251d2a031?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ),
    Book(
      id: "3",
      name: "Ready Player One",
      author: "Ernest Cline",
      imageUrl:'https://plus.unsplash.com/premium_photo-1683133333081-452251d2a031?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ),
    Book(
      id: "4",
      name: "Crimen y castigo",
      author: "Fiódor Dostoyevski",
      imageUrl:'https://plus.unsplash.com/premium_photo-1683133333081-452251d2a031?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ),
    Book(
      id: "5",
      name: "Hamlet",
      author: "William Shakespeare",
      imageUrl:'https://plus.unsplash.com/premium_photo-1683133333081-452251d2a031?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ),
  ];
}
