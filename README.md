# SS-Lab

Repository containing System Software Lab programs.

To execute Lex programs use the following commands
```
lex "lexFileName.l"
gcc lex.yy.c -ll
./a.out
```

To execute Yacc programs use the following commands
```
lex "lexFileName.l"
yacc -d "yaccFileName.y>"
gcc lex.yy.c y.tab.c -ll
./a.out
```
