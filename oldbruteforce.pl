#!/usr/bin/perl
$str = "helo123456789";
$lo = 5;
#       0123456
$count = 0;




for ($n = 0; $n < 90000; $n++) {
  my $t = sprintf("%0$lo\d", $n);
  
 # print "T $t";
  $e = substr($t,4,1);
  $f = substr($t,3,1);
  $g = substr($t,2,1);
  $h = substr($t,1,1);
  $i = substr($t,0,1);
  # print "$f $g $h $i ";
 if ($e < 7) {  
  if ($f < 7) {
   if ($g < 7) {
    if ($h < 7) {
	  if ($i < 7) {
        for ($p = 0; $p < 4; $p++) {
          $pos = substr($t,$p,1);
          $letter = substr($str,$pos,1);
	      $y = $p +1;
          @ans[$y] = $letter;
#	  print " Pos ";
#      print $pos;
#	  print " letter ";
#      print $letter;
        }
		$count = $count + 1;
		
		
		
	  print @ans[1] . @ans[2] . @ans[3] . @ans[4] . "\n";
      } 		
	}
   } 	
  }  
}
   
  }
  
  
  print "COUNT TOTAL...  $count";
