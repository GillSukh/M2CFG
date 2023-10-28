%{
#include </home/gill/Desktop/Midterm2/y.tab.h>
%}

%% 
"a" {return ZERO;}
"b" {return ONE;}
"c" {return TWO;}
[\n] {return NL;}
. ;
%%
