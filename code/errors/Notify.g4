grammar Notify;

assign
    : ID '=' v=INT {if ($v.int==0) notifyErrorListeners("values must be > 0");} ';'
      {System.out.println("assign "+$ID.text+" to ");}
    ;

INT :   [0-9]+ ;
ID  :   [a-zA-Z]+ ;
WS  :   [ \t\r\n]+ -> skip ;

