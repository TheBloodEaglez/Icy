#!/usr/bin/perl
$str = "h1!@#abc1234";
# $la is the length that you want your answer string to be
$la = 3; 
# $ls is the length of the string
$ls = length($str);
# $lae is the length of the original string raised to the power of the length you want your answer to be
$lae = $ls**$la;
$max = 4;
sub pass{
for ($n=0;$n<($ls**$la);$n++) {  
  $ans="";
  $tmpplace=$n;
  $place=$n;
  for ($i=$la-1;$i>=0;$i--) {
    $tmpplace=int((($place)/($ls**($i))));
	$place = $place-($tmpplace*($ls**($i)));
	$ans =  $ans . substr($str,$tmpplace,1);
  }
  print "$ans \n";
  $count++;
  }
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


  