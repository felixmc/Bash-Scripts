#!/bin/bash
j=0;a=1;x=1;y=1;xd=1;yd=1;while true;do for i in {1..2000} ; do if [[ $x == $LINES || $x == 0 ]]; then xd=$(( $xd *-1 )) ; fi ; if [[ $y == $COLUMNS || $y == 0 ]]; then yd=$(( $yd * -1 )) ; fi ; x=$(( $x + $xd )); y=$(( $y + $yd )); printf "\33[%s;%sH\33[48;5;%sm . \33[0m" $x $y $(( $a % 8 + 16 + $j % 223 )) ;a=$(( $a + 1 )) ; done ; x=$(( x%$COLUMNS + 1 )) ; j=$(( $j + 8 )) ;done
