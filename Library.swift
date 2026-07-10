import Foundation

class Book {
    var id: Int
    var name: String
    var auther: String
    var price: Double?
    var quantity: Int?

    init(id: Int, name: String, auther: String, price: Double?, quantity: Int?) {
        self.id = id
        self.name = name
        self.auther = auther
        self.price = price
        self.quantity = quantity
    }

    func displayInfo() {
        print("ID: \(id) | name: \(name) | author: \(auther)")
        if let thePrice = price { print("price: \(thePrice)") }
        else { print("Price not available") }
        if let theQuantity = quantity { print("quantity: \(theQuantity)") }
        else { print("not available") }
    }
}

let book1 = Book(id: 1, name: "Start with why", auther: "Simon Sinek", price: 80.0, quantity: 13)
let book2 = Book(id: 2, name: "But how do it know", auther: "J. Clark Scott", price: 59.9, quantity: 22)
let book3 = Book(id: 3, name: "Clean Code", auther: "Robert Cecil Martin", price: 50.0, quantity: 5)
let book4 = Book(id: 4, name: "Zero to One", auther: "Peter Thiel", price: 45.0, quantity: 12)
let book5 = Book(id: 5, name: "You don't know JS", auther: "Kyle Simpson", price: 39.9, quantity: 9)

class Library {
    var books: [Book] = []

    init() {
        books.append(book1)
        books.append(book2)
        books.append(book3)
        books.append(book4)
        books.append(book5)
    }

    func searchById(id: Int) -> Book? {
        for book in books {
            if book.id == id { return book }
        }
        return nil
    }

    func searchByName(name: String) -> Book? {
        for book in books {
            if book.name == name { return book }
        }
        return nil
    }

    func searchByAuther(auther: String) -> Book? {
        for book in books {
            if book.auther == auther { return book }
        }
        return nil
    }

    func sellBook(name: String, quantity: Int) {
        for book in books {
            if book.name == name {
                if let currentQuantity = book.quantity {
                    if quantity <= currentQuantity {
                        book.quantity = currentQuantity - quantity
                        print("Sale completed successfully")
                    } else {
                        print("Insufficient quantity")
                    }
                }
            }
        }
    }

    func printReceipt(name: String, quantity: Int) {
        for book in books {
            if book.name == name {
                if let thePrice = book.price {
                    let total = thePrice * Double(quantity)
                    print("Book Name: \(name)")
                    print("Quantity: \(quantity)")
                    print("Total Price: \(total)")
                } else {
                    print("Price not available")
                }
            }
        }
    }
}

let lib = Library()

// Search by ID
if let result = lib.searchById(id: 3) {
    result.displayInfo()
} else {
    print("Book not available")
}

// Sell book
lib.sellBook(name: "Clean Code", quantity: 2)

// Print receipt
lib.printReceipt(name: "Clean Code", quantity: 2)
