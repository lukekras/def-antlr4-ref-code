lexer grammar CymbolLexer;

channels { WHITESPACE, COMMENTS }

SEMI : ';' ;
ASSIGN : '=' ;
FLOAT_TYPE : 'float' ;
INT_TYPE : 'int' ;
VOID : 'void' ;
LEFT_BRACKET : '(' ;
RIGHT_BRACKET : ')' ;
LEFT_CURLY_BRACKET : '{' ;
RIGHT_CURLY_BRACKET : '}' ;
LEFT_SQUARE_BRACKET : '[' ;
RIGHT_SQUARE_BRACKET : ']' ;
COMMA : ',' ;
IF : 'if' ;
THEN : 'then' ;
ELSE : 'else' ;
RETURN : 'return' ;
MINUS : '-' ;
PLUS : '+' ;
NOT : '!' ;
MULTIPLY : '*' ;
EQUAL : '==' ;

ID  :   LETTER (LETTER | [0-9])* ;
fragment
LETTER : [a-zA-Z] ;

INT :   [0-9]+ ;

WS  :   [ \t\n\r]+ -> channel(WHITESPACE) ;

SL_COMMENT
    :   '//' .*? '\n' -> channel(COMMENTS)
    ;