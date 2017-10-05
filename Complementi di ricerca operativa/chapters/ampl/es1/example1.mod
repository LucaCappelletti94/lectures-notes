# PART 1: DECISION VARIABLES
var x1 >= 0; # first variable
var x2 >= 0; # second variable

# PART 2: OBJECTIVE FUNCTION
maximize z: 300*x1 + 200*x2;

# PART 3: CONSTRAINTS
s.t. M1:    2*x1 +   x2 <= 8; #s.t. significa "subject to"
s.t. M2:      x1 + 2*x2 <= 8;