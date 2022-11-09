/*Definition Section*/
%{
	#include<stdio.h>
%}
/*Rule Section*/
%%
("public"|"private"|"internal"|" protected internal"|"protected")?[ ]*(static)?[ ]*("void"|"int"|"float"|"long"|"double"|"bool"|"char"|"byte"|"short"|"decimal"|"sbyte"|"ushort"|"ulong"|"uint")[ ]*[A-Za-z_][A-Za-z0-9_]*[ ]*\((.*)\)  {printf("%s\t USER DEFINED FUNCTION\n",yytext);} 
 	
	
"checked"|"const"|"readonly"|"ref"|"explicit"|"extern"|"false"|"finally"|"fixed"|"implicit"|"in"|"unchecked"|"using"|"unsafe"|"virtual"SSS|"null"|"operator"|"out"|"override"|"params"|"default"|"event"|"sealed"|"sizeof"|"stackalloc"|"this"|"throw"|"true"|"try"|"typeof"|"uint"|"abstract"|"base"|"as"|"catch"|"volatile"|"add"|"group"|"ascending"|"descending"|"dynamic"|"from"|"get"|"global"|"alias"|"into"|"join"|"let"|"select"|"set"|"remove"|"orderby"|"public"|"protected"|"private"|"internal"|"protected internal"|"static"|"void"  {printf("%s\tKEYWORD\n",yytext);}


"int"|"float"|"long"|"double"|"bool"|"char"|"byte"|"short"|"decimal"|"sbyte"|"ushort"|"ulong"|"uint"  {printf("%s\tPRIMITIVE DATA TYPE\n",yytext);} 
"class"|"struct"|"enum"|"delegate"|"string"|"object"  {printf("%s\tDERIVED DATA TYPE\n",yytext);}


"if"          {printf("%s\t if token\n",yytext);}
"else"        {printf("%s\t else token\n",yytext);}
"switch"      {printf("%s\t switch token\n",yytext);}
"case"        {printf("%s\t case token\n",yytext);}
"do"          {printf("%s\t do token\n",yytext);}
"for"         {printf("%s\t for token\n",yytext);}
"while"       {printf("%s\t while token\n",yytext);}
"foreach"     {printf("%s\t foreach token\n",yytext);}
"break"       {printf("%s\t break token\n",yytext);}
"continue"    {printf("%s\t continue token\n",yytext);}
"return"      {printf("%s\t return token\n",yytext);}
"goto"        {printf("%s\t goto token\n",yytext);}					


"{"|"}"|";"|","|"("|")"   {printf("%s\tSEPERATOR\n",yytext);}

[0-9]+|-[0-9]+|0[Xx][a-fA-F0-9]+|[01]b[01]+ {printf("%s\t INTEGER LITERAL \n",yytext);}	

[0-9]*\.[0-9]+|-[0-9]*\.[0-9]+  {printf("%s\t FLOATING NUMBER \n",yytext);}

\".*\" {printf("%s\t STRING LITERAL \n",yytext);}

\'.\'|\'\u[A-F0-9]+ {printf("%s\t CHARACTER LITERAL\n",yytext);}

"+"|"-"|"/"|"--"|"*"|"%"|"++"|"=="|"!="|">"|"<"|">="|"<="|"&&"|"||"|"!"|"&"|"|"|"^"|"~"|"<<"|">>"|"="|"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="|"?:"|"is"|"as" {printf("%s\tOPERATOR\n",yytext);}

[A-Za-z_][A-Za-z0-9_]*|[@]("byte"|"checked"|"const"|"continue"|"private"|"protected"|"public"|"return"|"readonly"|"ref"|"sbyte"|"explicit"|"extern"|"false"|"finally"|"fixed"|"implicit"|"in"|"ulong"|"ushort"|"unchecked"|"using"|"unsafe"|"virtual"|"void"|"null"|"object"|"operator"|"out"|"override"|"params"|"default"|"event"|"sealed"|"sizeof"|"stackalloc"|"static"|"this"|"throw"|"true"|"try"|"typeof"|"uint"|"abstract"|"base"|"as"|"catch"|"volatile"|"add"|"group"|"ascending"|"descending"|"dynamic"|"from"|"get"|"global"|"alias"|"into"|"join"|"let"|"select"|"set"|"remove"|"orderby"|"if"|"else"|"switch"|"case"|"do"|"for"|"while"|"foreach"|"break"|"continue"|"return"|"goto"|"int"|"float"|"long"|"double"|"bool"|"char"|"byte"|"short"|"decimal"|"class"|"struct"|"enum"|"array"|"delegate"|"string"|"object") {printf("%s\tIDENTIFIER\n",yytext);}	

"//".*       {printf("%s\t  SINGLE LINE COMMENT\n",yytext);}
"/*"(.*)"*/" {printf("%s\t  MULTI LINE COMMENT\n",yytext);}


.|\n ; 												
%%
											
/*call the yywrap function*/
int yywrap()								
{
	return 1;
}
/*Auxiliary function*/
int main(void)
{
	/*call the yylex function.*/
	printf("Enter String to list out tokens: \n");
	yylex();
	return 0;
}
