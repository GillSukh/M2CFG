%{
	#include<stdio.h>
	int flag=0;

%}
%{
	int yylex();
	void yyerror();
%}

%token ONE TWO ZERO NL

%%
str0 : str1 nl { }
	 ;
str1 : str2 str3 { }
	 ;
str2 : ZERO str2 ONE { } 
	 | /* epsilon */ { }
	 ;
str3 : TWO str3 { } 
	 | /* epsilon */ { }
	 ;
nl : NL {return(0);} 
   ;
%%

void main()
{
	printf("Enter a string that contains equal amount of \"a\" and \"b\" characters and as many \"c\" characters.\n");
	yyparse();
	if(flag==0)
		printf("STRING VALID\n");
}

void yyerror(){
	flag=1;
	printf("STRING INVALID\n");
}