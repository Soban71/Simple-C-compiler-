import java_cup.runtime.*;

%%

%unicode
%cup
nl		=  \n|\r|\r\n
NUMBER	=  [0-9][0-9]*
Datatype = int|float|double|char | long
ID              = [a-zA-Z0-9_][a-zA-Z0-9_]*

r = .*
pattern="\""{r}"\""

%%
"for"            {System.out.println("FOR");return new Symbol(sym.FOR);}
"switch"            {System.out.println("SWITCH");return new Symbol(sym.SWITCH);}
"break"            {System.out.println("Break");return new Symbol(sym.Break);}
"case"            {System.out.println("Case");return new Symbol(sym.Case);}
"Default"              {System.out.println("Default");return new Symbol(sym.Default);}
"return"           {System.out.println("RETURN");return new Symbol(sym.RETURN);}
"if"            {System.out.println("IF");return new Symbol(sym.IF);}
"else"          {System.out.println("ELSE");return new Symbol(sym.ELSE);}
"ifelse"          {System.out.println("ifelse");return new Symbol(sym.IFelse);}
"while"         {System.out.println("WHILE");return new Symbol(sym.WHILE);}  
"do"         {System.out.println("DO");return new Symbol(sym.DO);}  
"void"         {System.out.println("VOID");return new Symbol(sym.VOID);}  
"printf"      {System.out.println("PRINTF");return new Symbol(sym.PRINTF);}
"scanf"       {System.out.println("SCANF");return new Symbol(sym.SCANF);}
">"      {System.out.println("GreaterOPERATOR");return new Symbol(sym.GreaterOP);}
"<"        {System.out.println("LessOp");return new Symbol(sym.LessOp);}
//"\""            {System.out.println("cot");return new Symbol(sym.cot);}
{Datatype}   {System.out.println("Datatype"+yytext());return new Symbol(sym.Datatype);}
{pattern}           {System.out.println("char"+yytext());return new Symbol(sym.ANYCHAR);}

{ID}	        {System.out.println("ID"+yytext());return new Symbol(sym.ID);}
{NUMBER}	{System.out.println("NUMBER"+yytext());return new Symbol(sym.NUMBER);}
"["             {System.out.println("OSquare");return new Symbol(sym.OSquare);}
"]"             {System.out.println("CSquare");return new Symbol(sym.CSquare);}
"{"             {System.out.println("OCURELY");return new Symbol(sym.OCURELY);}
"}"             {System.out.println("CCURELY");return new Symbol(sym.CCURELY);}
"+"		{System.out.println("PLUS");return new Symbol(sym.PLUS);}
"-"		{System.out.println("MINUS");return new Symbol(sym.MINUS);}
"%"             {System.out.println("MODULO");return new Symbol(sym.MODULO);}
"("		{System.out.println("OPEN BRACKET");return new Symbol(sym.OBRACKET);}
")"		{System.out.println("CLOSE BRACKET");return new Symbol(sym.CBRACKET);}
"="		{System.out.println("EQUAL");return new Symbol(sym.EQUAL);}
">"             {System.out.println("GREATER_OP");return new Symbol(sym.GREATER_OP);}
"<"             {System.out.println("Less_OP");return new Symbol(sym.Less_OP);}
"++"		{System.out.println("INC");return new Symbol(sym.INC);}
"--"		{System.out.println("DEC");return new Symbol(sym.DEC);}
"+="		{System.out.println("ADD_ASSIGN");return new Symbol(sym.ADD_ASSIGN);}
"-="		{System.out.println("SUB_ASSIGN");return new Symbol(sym.SUB_ASSIGN);}
"*="		{System.out.println("MUL_ASSIGN");return new Symbol(sym.MUL_ASSIGN);}
"/="		{System.out.println("DIV_ASSIGN");return new Symbol(sym.DIV_ASSIGN);}
">="		{System.out.println("GE");return new Symbol(sym.GE);}
"<="		{System.out.println("LE");return new Symbol(sym.LE);}
"=="		{System.out.println("EE");return new Symbol(sym.EE);}
"!="		{System.out.println("NE");return new Symbol(sym.NE);}
"&&"		{System.out.println("AND");return new Symbol(sym.AND);}
"||"		{System.out.println("OR");return new Symbol(sym.OR);}
"!"		{System.out.println("NOT");return new Symbol(sym.NOT);}
"/="		{System.out.println("DIV_ASSIGN");return new Symbol(sym.DIV_ASSIGN);}
"*"		{System.out.println("MUL");return new Symbol(sym.MUL);}
"/"		{System.out.println("DIV");return new Symbol(sym.DIV);}
"&"              {System.out.println("And");return new Symbol(sym.SingleAnd);}
";"             {System.out.println("SC");return new Symbol(sym.SC);}
":"             {System.out.println("COLON");return new Symbol(sym.COLON);}
","             {System.out.println("COMMA");return new Symbol(sym.COMMA);}
"'"             {System.out.println("single_cot");return new Symbol(sym.Scot);}


{nl}|" " 	{;}

.		{System.out.println("Error:" + yytext());}

