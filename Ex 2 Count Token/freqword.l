

%{
#include<stdio.h>
#include<string.h>

char word [] = "geeks";
int count = 0;


%}



%%
[a-zA-Z]+ { if(strcmp(yytext, word)==0)
				count++; }
. ;		 
%%


int yywrap()
{
	return 1;
}

/* code section */
int main()
{
		extern FILE *yyin, *yyout;
		
		/* open the input file
		in read mode */
		yyin=fopen("input.txt", "r");
		yylex();
		
		printf("%d \n", count);
	
}