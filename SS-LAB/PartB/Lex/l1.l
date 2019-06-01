//Lex program to count number of words,lines,spaces,characters in an input file
%{
#include<stdio.h>
int w=0,s=0,c=0,l=0;
%}
%%
[^ \t\n,."']+ {w++;c+=yyleng;}
[ ]	      {s++;}
[\n]          {l++;}
.             {c++;}
%%
int yywrap(void){
return 1;
}

int main(int argc, char*argv[]){
	yyin=fopen(argv[1], "r");
	yylex();
	printf("%d %d %d %d\n",w,c,s,l);
	return 0;
}