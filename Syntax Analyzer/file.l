%option yylineno

%{
#include<stdio.h>
#include "file.tab.h"


%}
%%
using          {printf("%s",yytext);return USING;} 
System         {printf("%s",yytext);return SYSTEM;}
namespace      {printf("%s",yytext);return NAMESPACE;}
class|struct          {printf("%s",yytext);return CLASS;}

("public"|"private"|"internal"|" protected internal"|"protected")           {printf("%s",yytext);return UDF1;}
("static"|"unsafe")           {printf("%s",yytext);return UDF2;} 

"int"|"float"|"long"|"double"|"bool"|"char"|"byte"|"short"|"decimal"|"sbyte"|"ushort"|"ulong"|"uint"|"void"|"string"  {printf("%s",yytext);return DT;}

"++"|"--"           {printf("%s",yytext);return INCDEC;}
">"|"<"|">="|"<="           {printf("%s",yytext);return CMP;}
"/*"           {printf("%s",yytext);return RSTAR;}
"*/"           {printf("%s",yytext);return LSTAR;}
"//"           {printf("%s",yytext);return SS;}
[=]            {printf("%s",yytext);return EQ;}
break          {printf("%s",yytext);return BREAK;}
return          {printf("%s",yytext);return RETURN;}
case            {printf("%s",yytext);return CASE;}
"+"|"-"|"/"|"*"|"%"|"=="|"!="|"&&"|"||"|"!"|"&"|"|"|"^"|"~"|"<<"|">>"|"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="|"?:"|"is"|"as"               {printf("%s",yytext);return ROPERATORS;}

[:]            {printf("%s",yytext);return COLON;}
[;]            {printf("%s",yytext);return COL;}

[(]            {printf("%s",yytext);return RIGHT;}

[)]            {printf("%s",yytext);return LEFT;}

if             {printf("%s",yytext);return IF;}
else           {printf("%s",yytext);return ELSE;}
"else if"       {printf("%s",yytext);return ELSE_IFT;}
while          {printf("%s",yytext);return WHILE;}
do             {printf("%s",yytext);return DO;} 
switch         {printf("%s",yytext);return SWITCH;}
default         {printf("%s",yytext);return DEFAULT;}
for            {printf("%s",yytext);return FOR;}
Console.WriteLine      {printf("%s",yytext);return CW;}
Console.ReadLine       {printf("%s",yytext);return CR;}
[{]            {printf("%s",yytext);return RC;} 
[}]            {printf("%s",yytext);return LC;}

[0-9]+             {printf("%s",yytext);return NUM;}

[0-9]+|-[0-9]+|0[Xx][a-fA-F0-9]+|[01]b[01]+|[0-9]*\.[0-9]+|-[0-9]*\.[0-9]+|\".*\"|\'.\'|\'\u[A-F0-9]+              {printf("%s",yytext);return CONSTANTS;}

[A-Za-z_,]*|[@]("byte"|"checked"|"const"|"continue"|"private"|"protected"|"public"|"return"|"readonly"|"ref"|"sbyte"|"explicit"|"extern"|"false"|"finally"|"fixed"|"implicit"|"in"|"ulong"|"ushort"|"unchecked"|"using"|"unsafe"|"virtual"|"void"|"null"|"object"|"operator"|"out"|"override"|"params"|"default"|"event"|"sealed"|"sizeof"|"stackalloc"|"static"|"this"|"throw"|"true"|"try"|"typeof"|"uint"|"abstract"|"base"|"as"|"catch"|"volatile"|"add"|"group"|"ascending"|"descending"|"dynamic"|"from"|"get"|"global"|"alias"|"into"|"join"|"let"|"select"|"set"|"remove"|"orderby"|"if"|"else"|"switch"|"case"|"do"|"for"|"while"|"foreach"|"break"|"continue"|"return"|"goto"|"int"|"float"|"long"|"double"|"bool"|"char"|"byte"|"short"|"decimal"|"class"|"struct"|"enum"|"array"|"delegate"|"string"|"object") {printf("%s",yytext);return RIDENTIFIER;}
[ \t\n] ;
%%
int yywrap(void)
{
return 1;
}
