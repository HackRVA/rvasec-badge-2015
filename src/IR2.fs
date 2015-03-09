!

\ RB13 = xmit LED
\ RB0 = receiver
hex
BF886130 constant LATB   
: binary 2 base ! ;
binary
( 1/0 -- ) ( turn IR on/off )
: IRled
  if
     LATB @ 10000000000000 or LATB ! 
  else
     LATB @ 10000000000000 invert and LATB !
  then
;

0 IRled

1 IRled
0 IRled
0 IRled
0 IRled
1 IRled

hex
FFFF IRsendVal !
1 IRsend !

IRsend @ u.

hex
IRrecv @ u.
IRrecvVal @ u.
0 IRrecvVal !
0 IRrecv !


