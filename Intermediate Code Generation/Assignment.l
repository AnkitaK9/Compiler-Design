%{
#include<stdio.h>
%}

letters [A-Za-z]
digits [0-9]


%%
[ \t] ;
\n	{yylineno++;}
"{"	{LC(); return '{';}
"}"	{RC(); return '}';}
int	{yylval.ival = INT; return INT;}
float	{yylval.ival = FLOAT; return FLOAT;}
char	{return CHAR;}
else	{return ELSE;}
do	return DO;
if	return IF;

while	return WHILE;
for	return FOR;
return 	return RETURN;
System.Console.WriteLine	return WRITELINE;
{letters}({letters}|{digits})* {yylval.str=strdup(yytext); return IDENTIFIER;}
{digits}+	{yylval.str=strdup(yytext);return NUM;}
{digits}+\.{digits}+ 	{yylval.str=strdup(yytext); return FLOATING_LITERAL;}
"<="		return LE;
">="		return GE;
"=="		return EQ;
"!="		return NEQ;
"&&"		return AND;
"||"		return OR;
\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
\".*\"	return STRING;
.	return yytext[0];
%%
int yywrap(void)
{
return 1;

}

