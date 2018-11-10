grammar ELang;
stat : (expr ';')+ EOF ;
expr : ID ;
WS   : [ \r\t\n]+ -> skip ;
ID   : [a-z]+ ;
