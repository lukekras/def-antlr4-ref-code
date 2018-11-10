grammar PropertyFile;
file : prop+ ;
prop : ID '=' STRING '\n' ;
ID   : [a-z]+ ;
STRING : '"' .*? '"' ;
fragment NL : ~[\r\n]* '\r'? '\n' ;
ML_COMMENT : '#---' NL .*? '#---' NL -> channel(HIDDEN) ; 
