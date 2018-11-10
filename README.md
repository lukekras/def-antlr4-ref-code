# def-antlr4-ref-code
This is the code associated with the book [The Definitive ANTLR 4 Reference](https://pragprog.com/book/tpantlr2/the-definitive-antlr-4-reference) by Terence Parr, published by [The Pragmatic Bookshelf](https://pragprog.com).

I've simply read the book, downloaded the code, and run the examples (using Antlr 4.7.1 and 4.7.2). This repo is the result of the corrections to the code for the above versions of antler.

## Summary of Code Updates
1. ANTLRFileStream type classes in the antlr runtime package have been deprecated, and replaced with CharStream.
2. Token option syntax for association "<assoc=right>" has changed location in grammars.
3. Miscellaneous book errata which can be referenced from the publishers website.

## Running the Code
1. Clone this repo.
2. Setup antlr as per instructions on the [antlr](https://www.antlr.org/index.html) website.
3. Work your way through the antlr book, building and running the code. When you build the code, java and class files will be generated in the checkout working git repo. You can use git (git clean -f) as a way of deleting those generated files, after you have finished with running a book example.