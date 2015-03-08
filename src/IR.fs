binary
: IRled
  if
     LATB @ 10000000000000 or LATB ! 
  else
     LATB @ 10000000000000 invert and LATB !
  then
;

: sendIR
  begin
    ?key -1 =
    if
       0 ( for until )
    else
       key dup
       32 = 
       if 
          drop ( key )
          1 ( for until )
       else
	  G_IRsend @
          0= if
             G_IRsendVal ! ( send key )
	     1 G_IRsend !
          else
             ( already sending )
             drop          ( key )
          then
          0 ( for until )
       then
    then
  until


