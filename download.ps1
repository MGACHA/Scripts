# Scripts
Power-Shell scripts
 $table = "location"
 # $i is the ending of the url always asc/desc
 for($i=12400; $i -le 12404; $i++){
 $f = "https://www.magda.com/$table/Exports/$i"
 $f
 
 Start-Process $f
 }
  
 for($i=12404; $i -le 12408; $i++){
 $f = "https://www.magda.com/$table/Import/$i"
 $f
 
 Start-Process $f
 }
