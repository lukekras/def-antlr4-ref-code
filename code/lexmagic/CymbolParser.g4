/** Simple statically-typed programming language with functions and variables
 *  taken from "Language Implementation Patterns" book.
 */
parser grammar CymbolParser;
options { tokenVocab = CymbolLexer; }

file:   (functionDecl | varDecl)+ ;

varDecl
    :   type ID (ASSIGN expr)? SEMI
    ;
type:   FLOAT_TYPE | INT_TYPE | VOID ; // user-defined types

functionDecl
    :   type ID LEFT_BRACKET formalParameters? RIGHT_BRACKET block // "void f(int x) {...}"
    ;

formalParameters
    :   formalParameter (COMMA formalParameter)*
    ;
formalParameter
    :   type ID
    ;

block:  LEFT_CURLY_BRACKET stat* RIGHT_CURLY_BRACKET ;   // possibly empty statement block

stat:   block
    |   varDecl
    |   IF expr THEN stat (ELSE stat)?
    |   RETURN expr? SEMI 
    |   expr ASSIGN expr SEMI // assignment
    |   expr SEMI          // func call
    ;

expr:   ID LEFT_BRACKET exprList? RIGHT_BRACKET    // func call like f(), f(x), f(1,2)
    |   expr LEFT_SQUARE_BRACKET expr RIGHT_SQUARE_BRACKET       // array index like a[i], a[i][j]
    |   MINUS expr                // unary minus
    |   NOT expr                // boolean not
    |   expr MULTIPLY expr
    |   expr (PLUS|MINUS) expr
    |   expr EQUAL expr          // equality comparison (lowest priority op)
    |   ID                      // variable reference
    |   INT
    |   LEFT_BRACKET expr RIGHT_BRACKET
    ;

exprList : expr (COMMA expr)* ;   // arg list