use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

print("hi\n");


my $name = 'Derek';


my ($age, $street) = (40, '123 Main St');


my $my_info = "$name lives on \"$street\"\n";
print($my_info);

$my_info = qq{$name lives on "$street"\n};
print($my_info);

my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

# say ends the line with a newline
say $bunch_of_info;

# The largest integer you can hold
my $big_int = 18446744073709551615;

# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);

# You can trust 16 digits of precision for floats on most machines
my $big_float = .1000000000000001;

# You can define the decimal precision amount
printf("%.16f \n", $big_float + .1000000000000001);

# newline to seperate things
printf("\n");

# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";

#my own testing to see if you can do normal equal
$first = $second;
say "does not work: $first\n\n";

# ---------- MATH ----------
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 to power of 4 is 5 ** 4";
say "5 ** 4 = ", 5 ** 4;
say "5 *** 4 = not possible\n";

# Built in functions
# Includes Trig functions plus
say "EXP 1 = ", exp 1; # e to the power of
say "HEX 10 = ", hex 10; # Convert from hexidecimal
say "OCT 10 = ", oct 10; # Convert from Octal
say "INT 6.45 = ", int(6.45); # Truncate You can use parentheses
say "LOG 2 = ", log 2; # Number to the power of e
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

print ("\n");

#++ += -- all those things work in perl

# Order of operations
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;


# ---------- CONDITIONALS ----------
# Perl considers undef, 0, 0.0, "", and "0" to be false
# ==, !=, <, <=, >, >=
# Boolean Operators: !, &&, ||

my $test = 1;

if ($test == 1){
  $test =2;
}

say ($test);

my $test1 = 3;

if ($test == 2 && $test1 == 3){
  say "hi";
}

print("\n");

# Comparison operators for strings
# eq, ne, lt, le, gt, ge
if('a' eq 'b'){
  say "a equals b";
} else {
  say "a doesn't equal b";
}

# just prints a newline does not get a value
my $comp = ('a' eq 'b');
say $comp;



# For loop
for(my $i = 0; $i < 10; $i++){
  say $i;

  if ($i == 9){
    last;
  }

}

print("\n");


# Print odds with the While loop
my $i = 1;

  while ($i < 10){
  if($i % 2 == 0){
    $i++;

    # next skips back to the beginning of the loop
    next;
  }

  # Last exits out of the loop
  if($i == 7){ last; }

  say $i;
  $i++;
}

# real comment
print("git test");
