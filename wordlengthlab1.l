%{  
   /*  This lex routine uses a counting array to match alphabeticstrings 
         and make a frequency count.
  
         The real item to notice is that yywrap() is called at EOF and then is run
         to do what we need to do.   yywrap() returns true when we have a successful 
         end to the program.  We may want to return false (0) if we want to lexing process 
         to fail 

        Modified by Michael Smith for Lab1
        January 2020

	-added lex directive to count numbers
	-added count variable to keep track of the number of numbers
	-added return type and return statement  to main and return type to yywrap
	-added print statement to print the number of numbers from the count variable

   */
	int lgths[100];
	int count = 0;
%}
%%
[a-zA-Z]+	{lgths[yyleng]++;}
[0-9]+		{count++;}
.	|
\n	;
%%
int yywrap()
{
	int i;
	printf("Length  No. words\n");
	for (i=1; i<100; i++) {
		if (lgths[i] > 0) {
			printf("%5d%10d\n",i,lgths[i]);
		}
	}
	printf("The number of numbers is: %d \n", count);
	return(1);
}

int main()
{  	
yylex();	
return(1);
}
