%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B  ENTER
%%
input:S ENTER {printf("valid grammer\n");exit(0);}
S    :B|C B 
C    :A|C A
     ;
%%
int main()
{
printf("enter the input ");
yyparse();
}
int yyerror()
{
printf("invalid grammer \n");
return 1;
}
