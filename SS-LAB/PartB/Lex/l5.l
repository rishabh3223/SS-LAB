//Lex program to count number of positive, negative numbers and positive, negative fractions
%{
    int pnum = 0, nnum = 0, pf = 0, nf = 0;
%}
DIGIT [0-9]
%%
[-]{DIGIT}+ {nnum++;}
[+]?{DIGIT}+ {pnum++;}
[-]{DIGIT}*\.{DIGIT}+ {nf++;}
[+]?{DIGIT}*\.{DIGIT}+ {pf++;}
. {;}
%%

int yywrap(void){
return 1;
}

int main() {
    yyin = fopen("nums.txt", "r");
    yylex();
    printf ("Positive numbers: %d\n", pnum);
    printf ("Negative numbers: %d\n", nnum);
    printf ("Negative Fractions %d\n", nf);
    printf ("Positive Fractions %d\n", pf);
    return 0;
}
