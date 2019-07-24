#!/usr/bin/perl
#copyright 2019 David Ezra Easter
$str = "a!#432";
# $la is the length that you want your answer string to be
$la = 5; 
# $ls is the length of the string
$ls = length($str);
# $lae is the length of the original string raised to the power of the length you want your answer to be
#$lae = $ls**$la;
$max = 6;
sub pass{

for ($n=0;$n<($ls**$la);$n++) {  
  $ans="";
  $tmpplace=$n;
  $place=$n;

  $h1 = -1;
  $h2 = -1;
  $h3 = -1;
  for ($i=$la-1;$i>=0;$i--) {
    $tmpplace=int((($place)/($ls**($i))));
	$place = $place-($tmpplace*($ls**($i)));
	$ans =  $ans . substr($str,$tmpplace,1);
	$skip = 0;
	$h1 = $h2;
	$h2 = $h3;
	$h3 = $tmpplace;
    if ($h1 == $h2) {
     if ($h2 == $h3) {
     $skip = 1;
	 $i=0;
     }
    }
  
  }
  if ($skip == 0) {
    print "$ans \n";
    $count++;
 
  }
  
}
print "COUNT TOTAL...  $count \n";
		}		
		pass();
for ($x = $la; $x < $max; $x++) {
	$la++;
	pass();
}

if ($count == $n) {
print "COUNT TOTAL...  $count \n";
} else {
 print "COUNT TOTAL...  $n \n";
}  
