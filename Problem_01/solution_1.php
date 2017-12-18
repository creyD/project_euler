<?php
//again trying to do it without modulo
$numbers = [];
for($a = 3, $b = $b2 = 5; $a < 1000; $a += 3, $b += $b2){
    if($b >= 1000){
        $b = $b2 = 0;
    }
    array_push($numbers, $a, $b);
}
$numbers = array_unique($numbers, SORT_NUMERIC);
$sum = array_sum($numbers);
echo $sum;
?>