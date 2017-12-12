<?php
function isEven ($int) {
    //it looks dumb but it works so it's not dumb
    $d = substr($int, -1);
    for($i=$d; ; $i -= 2){
        switch($i){
            case 0:
                return true;
                break;
            case 1:
                return false;
                break;
        }
    }
}

$n1 = 1;
$n2 = $sum = 2;
$num = $n1 + $n2;

for(; $num < 4000000; $num = $n1 + $n2){
    if(isEven($num)){
        $sum += $num;
    }
    $n1 = $n2;
    $n2 = $num;
}

echo $sum;
//echo: 4613732 <- correct

?>