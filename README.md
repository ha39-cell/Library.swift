# Library.swift
A simple console-based Library Management System built in Swift, supporting book search, sales, and receipt generation.
# Library Management System (Swift)

A simple console-based library management system built with Swift, using basic object-oriented programming concepts.

## Features
- Add and store books with ID, name, author, price, and quantity
- Search for a book by ID, name, or author
- Sell a book (updates stock quantity, checks for available stock)
- Print a sales receipt showing quantity and total price

## Concepts Used
- Classes and objects
- Optionals (`if let`)
- Arrays and loops
- Basic OOP structure

## Example
\`\`\`swift
let lib = Library()
if let result = lib.searchById(id: 3) {
    result.displayInfo()
}
lib.sellBook(name: "Clean Code", quantity: 2)
lib.printReceipt(name: "Clean Code", quantity: 2)
\`\`\`

## Requirements
- Swift Playground or Xcode
