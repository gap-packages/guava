# The following is a manual example
gap> C := QCLDPCCodeFromGroup(7,2,3);
a linear [21,8,1..6]5..10 low-density parity-check code over GF(2)
gap> MinimumWeight(C);
6
gap> # The quasi-cyclic structure is obvious from the check matrix
gap> Display( CheckMat(C) );
 1 . . . . . . . 1 . . . . . . . . 1 . . .
 . 1 . . . . . . . 1 . . . . . . . . 1 . .
 . . 1 . . . . . . . 1 . . . . . . . . 1 .
 . . . 1 . . . . . . . 1 . . . . . . . . 1
 . . . . 1 . . . . . . . 1 . 1 . . . . . .
 . . . . . 1 . . . . . . . 1 . 1 . . . . .
 . . . . . . 1 1 . . . . . . . . 1 . . . .
 . . . . . 1 . . . . . 1 . . . . 1 . . . .
 . . . . . . 1 . . . . . 1 . . . . 1 . . .
 1 . . . . . . . . . . . . 1 . . . . 1 . .
 . 1 . . . . . 1 . . . . . . . . . . . 1 .
 . . 1 . . . . . 1 . . . . . . . . . . . 1
 . . . 1 . . . . . 1 . . . . 1 . . . . . .
 . . . . 1 . . . . . 1 . . . . 1 . . . . .
gap> # This is the famous [155,64,20] quasi-cyclic LDPC codes
gap> C := QCLDPCCodeFromGroup(31,3,5);
a linear [155,64,1..24]24..77 low-density parity-check code over GF(2)
gap> # An example using non prime m, it may take a while to construct this code
gap> C := QCLDPCCodeFromGroup(356,4,8);
a linear [2848,1436,1..120]312..1412 low-density parity-check code over GF(2)
