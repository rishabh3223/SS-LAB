//Lex program to count vowel, consonent, numbers,special characters
%{
#include<stdio.h>
int cvowel = 0,cconsonant = 0,cnumber = 0,cline = 0,cspecial = 0;
%}

%%
[ ] ;
[aeiouAEIOU] {cvowel++;printf("%s is a vowel",yytext);}
[a-zA-Z] {cconsonant++;printf("%s is a consonent",yytext);}
[0-9] {cnumber++;printf("%s is a number",yytext);}
[^ \t\n(a-zA-Z)(0-9)] {cspecial++;printf("%s is a special character",yytext);}
\n {cline++;printf("line detected");}
%%

int yywrap()
{return 1;}

main(int argc, char *argv[])
{
if(argc!=2){
exit(0);
}
yyin=fopen(argv[1],"r");
yylex();
printf("Number of vowels are %d \n Number of consonants are %d \n Number of numbers are %d \n Number of special are %d \n Number of lines are %d \n ",cvowel,cconsonant,cnumber,cspecial,cline);
}