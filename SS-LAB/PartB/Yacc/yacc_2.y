%{
  #include<stdlib.h>
  #include<stdio.h>
%}

%token LETTER NUMBER UND NL

%%
stmt : var NL {printf ("Valid expression\n"); exit(0);}
;

var : LETTER alpha
;

alpha : LETTER alpha
|NUMBER alpha
|UND alpha
|LETTER
|NUMBER
|UND
;
%%
int yyerror(char *msg) {
    printf ("Invalid\n");
    exit(0);
}
int main() {
    yyparse();
    return 0;
}
