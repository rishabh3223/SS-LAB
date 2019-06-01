//Lex program to count identifiers, operators, comment lines in a text
%{
#include<stdio.h>
int id=0, com=0, oper=0;
%}
%%
\/\/.* {com++;}
"/*"[^("*/")]+"*/" {com++;}
[+\-*/]            {oper++;}
[a-zA-Z_][a-zA-Z0-9_]* {id++;}
. ;
%%
int yywrap(){return 1;
fclose(yyin);}
void main()
{
  yyin=fopen("pgm.txt.txt","r");
  yylex();
  printf("No. of identifiers=%d\n", id);
  printf("No. of comments=%d\n", com);
  printf("No. of operators=%d\n", oper);
  }