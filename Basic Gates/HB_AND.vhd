-- HB_AND

ENTITY HB_AND IS
PORT(
	A, B: IN BIT;
	X: OUT BIT
);
END HB_AND;

ARCHITECTURE HB OF HB_AND IS
BEGIN

X <= A AND B;

END HB;